Deface::Override.new(:virtual_path => 'spree/shared/_order_details',
                     :name => 'add_order_status_to_order_details',
                     :insert_before => 'div[data-hook="order-ship-address"]',
                     :text => '
                        <% if @order.completed? %>
                          <div class="col-md-12">
                            <p>Stato pagamento: <strong><%= Spree.t("payment_states.#{@order.payment_state}").titleize if @order.payment_state %></strong></p>
                          </div>
                          <div class="col-md-12">
                            <p>Stato spedizione: <strong><%= Spree.t("shipment_states.#{@order.shipment_state}").titleize if @order.shipment_state %></strong></p>
                          </div>
                        <% end %>
                    ')
