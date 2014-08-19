Deface::Override.new(:virtual_path => 'spree/products/index',
                     :name => 'remove_filters_from_products',
                     :replace_contents => '[data-hook="homepage_sidbar_navigation"]',
                     :text => '
                       <%= render :partial => "spree/shared/taxonomies" %>
                     ')
