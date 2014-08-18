Deface::Override.new(:virtual_path => 'spree/shared/_login_bar',
                     :name => 'change_login_bar',
                     :replace => 'erb[loud]:contains("Spree.t(:my_account)")',
                     :text => '
                        <%= link_to "Il tuo account", spree.account_path %>
                    ')
