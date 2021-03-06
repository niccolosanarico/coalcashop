Deface::Override.new(:virtual_path => 'spree/shared/_login_bar',
                     :name => 'add_sign_up_to_header',
                     :replace => 'li#link-to-login',
                     :original => '<li id="link-to-login"><%= link_to Spree.t(:login), spree.login_path %></li>',
                     :text => '<li id="link-to-signup"><%= link_to "Registrati", spree.signup_path %></li>
                     <li id="link-to-login"><%= link_to "Accedi", spree.login_path %></li>')
