Deface::Override.new(:virtual_path => 'spree/checkout/_new_user',
                     :name => 'change_to_ita_for_new_user',
                     :replace => 'erb[loud]:contains("Spree.t(:create_new_account)")',
                     :text => '
                        <div>Crea un nuovo account</div>
                    ')

Deface::Override.new(:virtual_path => 'spree/checkout/_new_user',
                     :name => 'change_login_existing_user',
                     :replace => 'erb[loud]:contains("Spree.t(:login_as_existing)")',
                     :text => '
                      <%= link_to "Possiedi gia un account?", spree.login_path %>
                    ')
