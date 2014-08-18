Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'add_IVA_to_product_overview',
                     :replace => 'span.price',
                     :original => '0234884c70e261f60e6ef473d16492c679050c22',
                     :text => '
                       <span class="price selling lead" itemprop="price"><%= display_price(product) %> <br/><span class="iva-overview">+ IVA 22%</span></span>
                    ')
