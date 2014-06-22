Deface::Override.new(:virtual_path => 'spree/taxons/_taxon',
                     :name => 'remove_taxon_children_products',
                     :remove => 'erb[loud]:contains("spree/shared/products")')
