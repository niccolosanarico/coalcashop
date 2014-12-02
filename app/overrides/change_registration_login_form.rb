Deface::Override.new(:virtual_path => 'spree/user_registrations/new',
                     :name => 'change_registration_login_form',
                     :replace => 'erb[loud]:contains("Spree.t(:login_as_existing)")',
                     :text => '
                         <%= link_to "Possiedi un account?", spree.login_path, :title => "Se possiedi un account su Coalca Shop, clicca qui per inserire le tue credenziali" %>
                    ')


Deface::Override.new(:virtual_path => 'spree/user_registrations/new',
                    :name => 'add_privacy_acceptance_to_signup',
                    :insert_before => 'p',
                    :text => '
                        <div class="accept-signup text-center">
                          <span style="color:red; margin-right:2px;">*</span><input type="checkbox" id="privacy-agreement"/>
                          <span class="checkbox-signup">Ho letto ed accetto l\'<a href="https://www.iubenda.com/privacy-policy/983640" target=_blank>informativa sulla privacy</a></span>
                        </div>
                    ')


Deface::Override.new(:virtual_path => 'spree/user_registrations/new',
                    :name => 'add_id_to_submit_button',
                    :replace => 'p',
                    :text => '
                    <p><%= f.submit Spree.t(:create), :class => "btn btn-lg btn-success btn-block", :id => "submitBtn", :disabled => "disabled" %></p>
                    ')
