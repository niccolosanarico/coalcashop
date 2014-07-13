Deface::Override.new(:virtual_path => 'spree/shared/_login_bar',
                     :name => 'add_sign_up_to_header',
                     :replace => 'li#link-to-login',
                     :original => '2dc7a51ea858c4584611c67c0923ac136f074326',
                     :text => '<li id="link-to-signup"><%= link_to "Registrati", spree.signup_path %></li>
                     <li id="link-to-login"><%= link_to "Accedi", spree.login_path %></li>')
