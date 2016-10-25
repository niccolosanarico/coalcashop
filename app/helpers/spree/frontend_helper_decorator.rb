module Spree
  module FrontendHelper
    ##
    # Override taxons_tree to use the correct css class highlighting rules
    def taxons_tree(root_taxon, current_taxon, max_level = 1)
      return '' if max_level < 1 || root_taxon.leaf?
      content_tag :div, class: 'list-group' do
        taxons = root_taxon.children.map do |taxon|
          css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'list-group-item active' : 'list-group-item'
          # css_class = (current_taxon.name == taxon.name) ? 'list-group-item' : 'list-group-item'
        end
        safe_join(taxons, "\n")
      end
    end
  end
end
