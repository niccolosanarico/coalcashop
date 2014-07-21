Deface::Override.new(:virtual_path => 'spree/user_sessions/new',
                     :name => 'change_login_form',
                     :replace => 'erb[loud]:contains("Spree.t(:login_as_existing)")',
                     :text => '
                        Entra come utente registrato
                    ')
