Deface::Override.new(:virtual_path => 'spree/checkout/payment/_gateway',
                     :name => 'fix_checkout_form',
                     :replace => 'p.field:nth-child(1)',
                     :text => '
                        <p class="field">
                          <%= label_tag "name_on_card_#{payment_method.id}", Spree.t(:name_on_card) %><span class="required">*</span><br />
                          <%= text_field_tag "#{param_prefix}[name]", "#{@order.billing_firstname} #{@order.billing_lastname}", { id: "name_on_card_#{payment_method.id}", :class => "form-control required"} %>
                        </p>
                    ')

Deface::Override.new(:virtual_path => 'spree/checkout/payment/_gateway',
                    :name => 'change_credit_card_image',
                    :replace => 'erb[loud]:contains("image_tag")',
                    :text => %q(
                      <%= image_tag 'credit_cards.jpg', :id => 'credit-card-image', :class => 'pull-right cc-smaller-img' %>
                    ))
