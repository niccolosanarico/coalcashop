Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_footer_to_application',
                     :insert_after => 'div.row',
                     :text => '
                        <%= render :partial => "spree/shared/footer" %>
                    ')
