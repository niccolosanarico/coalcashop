Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'img_popup_in_product_details',
                     :insert_after => 'div#main-image div.panel-body',
                     :text => %q{

                       <div id="img-modal" class="modal fade" tabindex="-1" role="dialog">
                         <div class="modal-dialog">
                           <div class="modal-content">
                             <div class="modal-body">
                              <% if defined?(image) && image %>
                                <%= image_tag image.attachment.url(:large), :itemprop => "image", :class => "img-responsive"  %>
                              <% else %>
                                <%= large_image(@product, :itemprop => "image", :class => "img-responsive") %>
                              <% end %>
                             </div>
                             <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">Chiudi</button>
                            </div>
                           </div>
                         </div>
                       </div>

                     })
