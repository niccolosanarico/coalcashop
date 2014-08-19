Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'remove_filters_from_taxons',
                     :replace_contents => '[data-hook="taxon_sidbar_navigation"]',
                     :text => '
                       <%= render :partial => "spree/shared/taxonomies" %>
                     ')
