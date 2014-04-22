Deface::Override.new(:virtual_path => 'spree/products/_image',
                     :name => 'img_popup_in_product_details',
                     :replace => 'erb[loud]:contains("image_tag image.attachment.url(:product)")',
                     :partial => 'shared/image_add')
