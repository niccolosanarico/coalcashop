require 'redcarpet'

Spree::Product.class_eval do

  def description_html
    return 'This product has no description' unless !description.nil?

    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, hard_wrap: true)

    desc = description.empty? ? 'This product has no description' : description

    markdown.render(desc)
  end
  
end
