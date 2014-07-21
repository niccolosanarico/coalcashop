Deface::Override.new(:virtual_path => 'spree/shared/_user_form',
                     :name => 'change_signup_on_purchase',
                     :replace => 'erb[loud]:contains(":placeholder => Spree.t(:email)")',
                     :text => '
                        <%= f.email_field :email, :class => "form-control", :placeholder => "Inserisci la tua mail" %>
                    ')

Deface::Override.new(:virtual_path => 'spree/shared/_user_form',
                     :name => 'change_password_on_purchase',
                     :replace => 'erb[loud]:contains(":placeholder => Spree.t(:password)")',
                     :text => '
                        <%= f.password_field :password, :class => "form-control", :placeholder => "Crea una password" %>
                    ')
