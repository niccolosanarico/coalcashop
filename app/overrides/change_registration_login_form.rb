Deface::Override.new(:virtual_path => 'spree/user_registrations/new',
                     :name => 'change_registration_login_form',
                     :replace => 'erb[loud]:contains("Spree.t(:login_as_existing)")',
                     :text => '
                         <%= link_to "Possiedi un account?", spree.login_path, :title => "Se possiedi un account su Coalca Shop, clicca qui per inserire le tue credenziali" %>
                    ')
