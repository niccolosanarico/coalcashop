Deface::Override.new(:virtual_path => 'spree/checkout/payment/_banktransfer',
                     :name => 'fix_existing_card_form',
                     :replace => 'table',
                     :text => %q{
                       <p>Al completamento dell'ordine, Vi preghiamo di procedere al pagamento della cifra pattuita usando gli estremi qui di seguito:</p>
                       <% banks.each do |bank| %>
                        <p class="field">
                          <label for="bank_name">Banca</label><br/>
                          <p id="bank_name"><%= bank.name %></p>
                        </p>
                        <p class="field">
                          <label for="bank_to">Intestato a:</label><br/>
                          <p id="bank_to">Coalca s.r.l.</p>
                        </p>
                        <p class="field">
                          <label for="bank_account">IBAN</label><br/>
                          <p id="bank_account"><%= bank.account_no %></p>
                        </p>
                      <% end %>
                    })
