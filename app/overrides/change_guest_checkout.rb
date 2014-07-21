Deface::Override.new(:virtual_path => 'spree/checkout/registration',
                     :name => 'change_guest_checkout',
                     :replace => 'erb[loud]:contains(":placeholder => Spree.t(:email)")',
                     :text => '
                        <%= f.email_field :email, :class => "form-control title", :placeholder => "Inserisci la tua mail" %>
                    ')

Deface::Override.new(:virtual_path => 'spree/checkout/registration',
                     :name => 'change_guest_checkout_2',
                     :replace => 'erb[loud]:contains("Spree.t(:guest_user_account)")',
                     :text => '
                        <div>Acquista senza registrarti</div>
                    ')
