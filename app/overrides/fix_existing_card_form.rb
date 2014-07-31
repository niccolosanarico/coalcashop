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

Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                     :name => 'fix_wire_transfer',
                     :remove => 'erb[loud]:contains("banktransfer_instructions")'
                    )
                    
Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                     :name => 'fix_wire_transfer_1',
                     #:replace => 'erb[loud]:contains("banktransfer_instructions")',
                     :insert_bottom => "#payment-method-fields",
                     :text =>
                        %q{
                          <p><%= link_to "Come pagare con bonifico bancario?", bank_transfer_instructions_path, :id => 'banktransfer_instructions', :target => "_blank" %></p>
                        }
                    )
