Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'add_IVA_to_product_overview',
                     :replace => 'span.price',
                     :text => '
                       <span class="price selling lead" itemprop="price"><%= display_price(product) %> + IVA 22%</span>
                    ')
