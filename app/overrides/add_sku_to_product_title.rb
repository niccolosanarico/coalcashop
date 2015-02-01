Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_sku_to_product_title',
                     :insert_after => 'h1.product-title',
                     :text => %q(
                      <h4 class="sku-subtitle">SKU: <%= @product.sku %></h4>
                     )
                    )
