Deface::Override.new(:virtual_path => 'spree/checkout/edit',
                     :name => 'change_checkout_form',
                     :replace => 'erb[loud]:contains("checkout_form_#{@order.state}")',
                     :text => '
                        <%= form_for @order, :url => update_checkout_path(@order.state),
                          :html => { :id => "checkout_form_#{@order.state}", :role => "form" } do |form| %>
                    ')
