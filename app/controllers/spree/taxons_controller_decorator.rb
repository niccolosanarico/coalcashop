# app/controllers/spree/taxons_controller_decorator.rb
# Sorting based off: http://berk.es/2015/05/09/add-sorting-to-your-product-page-in-spree/
# Taxon specific code from: https://gist.github.com/Whelton/42cf3536903a95c04ac8

module Spree
  TaxonsController.class_eval do
    helper_method :sorting_param

    def show
      @taxon = Taxon.friendly.find(params[:id])
      return unless @taxon

      @searcher = build_searcher(params.merge(taxon: @taxon.id, include_images: true))
      @products = @searcher.retrieve_products
      @taxonomies = Spree::Taxonomy.includes(root: :children)

      # Remove default `:in_taxon` `ORDER_BY` & apply sorting scope if `sorting` param is present
      @products = @products.reorder('').send(sorting_scope) if params[:sorting].present?
    end

    def sorting_param
      params[:sorting].try(:to_sym) || default_sorting
    end

    private

    def sorting_scope
      allowed_sortings.include?(sorting_param) ? sorting_param : default_sorting
    end

    def default_sorting
      :ascend_by_updated_at
    end

    def allowed_sortings
      [:descend_by_master_price, :ascend_by_master_price]
    end
  end
end
