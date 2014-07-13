Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                     :name => 'fix_existing_card_form',
                     :replace => 'div.card_options',
                     :text => '
                        <div class="card_options">
                          <%= radio_button_tag "use_existing_card", "yes", true %>
                          <label for="use_existing_card_yes">Usa una carta esistente</label>
                          <br/>
                          <%= radio_button_tag "use_existing_card", "no" %>
                          <label for="use_existing_card_no">Usa una nuova carta o altro metodo di pagamento</label>
                        </div>
                    ')
