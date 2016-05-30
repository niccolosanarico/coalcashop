Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'add_filters_to_product_overview',
                     :insert_before => "#products[data-hook]",
                     :partial       => "spree/shared/sorting_links")
