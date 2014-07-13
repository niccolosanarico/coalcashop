require File.expand_path('../../config/environment', __FILE__)
require 'csv'

puts "Beginning import operations"

# 1 - Load the product data file - CSV & begin import loop

CSV.foreach('20140706_Articoli.csv', converters: :all, headers: true) do |product|

  puts "- Importing #{product['Name']} [SKU: #{product['SKU']}]"


  p = Spree::Variant.find_by sku: "#{product['SKU']}"

  if !p.nil?
    # 2a - check for existence of the product, by SKU
    puts "--- #{p.name} exists, not touching anything"

  else

    # 2b - If not existing, add it to the database
    puts "--- Item does not exist. Creating..."
    prod = Spree::Product.create(
                :name => product['Name'],
                :price => product['Price'],
                :description => product['Description'],
                :sku => product['SKU'],
                :height => product['Height'],
                :width => product['Width'],
                :depth => product['Depth'],
                :weight => product['Weight'],
                :available_on => product['available_from'],
                :shipping_category_id => 1,
                :tax_category_id => 1
    )

    puts "---- Added product"

    #### Add taxons (it expects only one TODO)
    t = Spree::Taxon.find_by_id(product['Taxon_ID'])

    prod.taxons << t

    puts "---- Added taxon #{t.name}"

    #### Add images
    Dir.foreach("images/#{product['SKU']}") do |image|

      next if image == "." or image == ".."

      prod.images << Spree::Image.create!({:attachment => open(URI.parse("images/#{product['SKU']}/#{image}").to_s),
                                          :viewable => product}, :without_protection => true)
    end

    puts "---- Added images"

    #### Properties
    for i in 1..3 do
      prod.set_property(product["Property_name_#{i}"], product["Property_value_#{i}"]) unless product["Property_name_#{i}"].blank? || product["Property_name_#{i}"].nil?
    end

    puts "---- Added properties"

    #### Save

    prod.save!

    puts "---- Saved!"
  end

  # Add a newline
  puts ""

end

# 3 - Closing operations
