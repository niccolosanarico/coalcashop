Deface::Override.new(:virtual_path => 'spree/shared/_user_form',
                     :name => 'change_registration_add_newsletter_optin',
                     :insert_bottom => 'fieldset',
                     :text => '
                       <div class="accept-signup text-center form-group">
                        <%= f.check_box :newsletter_optin, :class => "" %>
                        <span class="">Si, voglio iscrivermi alla newsletter per ricevere offerte ed aggiornamenti</span>
                       </div>
                    ')
