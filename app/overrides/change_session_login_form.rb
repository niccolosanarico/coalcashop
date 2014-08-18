Deface::Override.new(:virtual_path => 'spree/user_sessions/new',
                     :name => 'change_session_login_form',
                     :replace => 'erb[loud]:contains("Spree.t(:login_as_existing)")',
                     :text => '
                        Entra come utente registrato
                    ')


Deface::Override.new(:virtual_path => 'spree/user_sessions/new',
                     :name => 'add_title_to_session_login_form',
                     :replace => 'erb[loud]:contains("Spree.t(:create_a_new_account)")',
                     :text => '
                        <%= link_to Spree.t(:create_a_new_account), spree.signup_path, :title => "Se non hai ancora un account, clicca qui per crearne uno" %>
                      ')
