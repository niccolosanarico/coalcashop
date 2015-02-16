Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                     :name => 'add_IVA_to_product_details',
                     :insert_after => 'div#product-price span.lead',
                     :text => %q(
                        <span>+ IVA 22%</span>
                    ))

Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                     :name => 'formant_variant_pricing',
                     :insert_top => 'div#product-variants span.diff',
                     :text => %q( <br/> ))

Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                    :name => 'fix_variants_list',
                    :add_to_attributes => 'ul.list-group',
                    :attributes => { :style => "list-style-type: none;"}
                    )
