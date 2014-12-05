#Deface::Override.new(:virtual_path => 'spree/shared/_user_form',
#                      :name => 'change_registration_add_name_lastname',
#                      :insert_top => 'fieldset',
#                      :text => '
#                      <div class="form-group">
#                        <%= f.text_field :name, :class => "form-control", :placeholder => "Nome" %>
#                      </div>
#                      <div class="form-group">
#                        <%= f.text_field :lastname, :class => "form-control", :placeholder => "Cognome" %>
#                      </div>
#                      <hr/>
#                      ')

Deface::Override.new(:virtual_path => 'spree/shared/_user_form',
                     :name => 'change_registration_add_newsletter_optin',
                     :insert_bottom => 'fieldset',
                     :text => '
                       <div class="accept-signup text-center form-group">
                        <%= f.check_box :newsletter_optin, :class => "" %>
                        <span class="">Si, voglio iscrivermi alla newsletter per ricevere offerte ed aggiornamenti</span>
                       </div>
                    ')
