module Spree
  ProductsHelper.module_eval do
    ##
    # Override cache_key_for_products to add caching per sort param.
    def cache_key_for_products
      puts "LOVELY SORTING"
      count = @products.count
      # Instead of default max_updated_at, we look at the first product in the list
      # And we add sorting, so that we get a product-cache per sorting param
      first_id = @products.first.id
      sorting = params[:sorting]
      "#{I18n.locale}/#{current_currency}/spree/products/all-#{params[:page]}-#{first_id}-#{sorting}-#{count}"
    end

    def current_sorting?(key)
      if (defined? sorting_param)
        sorting_param == key.to_sym
      end
    end
  end
end
