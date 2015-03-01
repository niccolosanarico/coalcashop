Deface::Override.new(:virtual_path => 'spree/products/_image',
                     :name => 'img_popup_in_product_details',
                     :insert_after => 'erb[loud]:contains("image_tag")',
                     :text => %q{

                       <div id="img" class="modal fade" tabindex="-1" role="dialog">
                         <div class="modal-dialog">
                           <div class="modal-content">
                             <div class="modal-body">
                               <%= image_tag image.attachment.url(:large), :itemprop => "image", :class => "img-responsive" %>
                             </div>
                           </div>
                         </div>
                       </div>

                     })
