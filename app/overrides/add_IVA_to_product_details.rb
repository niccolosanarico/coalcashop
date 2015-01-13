Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                     :name => 'add_IVA_to_product_details',
                     :replace => 'div#product-price span.price',
                     :text => '
                        <span class="lead price selling" itemprop="price">
                          <%= display_price(@product) %> <span class="iva-overview">+ IVA 22%</span>
                        </span>
                    ')

Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                    :name => 'fix_variants_list',
                    :add_to_attributes => 'ul.list-group',
                    :attributes => { :style => "list-style-type: none;"}
                    )
