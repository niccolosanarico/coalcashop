Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_markdown_down_support_to_product_details',
                     :replace => 'div[data-hook="description"]',
                     :text => %q(
                     <div class="well" itemprop="description_html" data-hook="description_html">
                      <%= sanitize @product.description_html rescue Spree.t(:product_has_no_description) %>
                     </div>
                    ))
