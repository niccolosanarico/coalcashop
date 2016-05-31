Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'add_filters_to_product_overview',
                     :insert_before => "#products[data-hook]",
                     :original => '672c434d9c7711e13c844ea708c4e11aeec7366b',
                     :partial       => "spree/shared/sorting_links")
