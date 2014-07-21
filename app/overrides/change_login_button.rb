Deface::Override.new(:virtual_path => 'spree/shared/_login',
                     :name => 'change_login_button',
                     :replace => 'erb[loud]:contains("Spree.t(:login)")',
                     :text => '
                        <%= f.submit "Entra", :class => "btn btn-lg btn-success btn-block", :tabindex => 3 %>
                    ')
