Deface::Override.new(:virtual_path => 'spree/users/show',
                     :name => 'change_user_details_page',
                     :replace => 'erb[loud]:contains("Spree.t(:order_number)")',
                     :text => %q(
                        Numero d'ordine
                     ))

Deface::Override.new(:virtual_path => 'spree/users/show',
                     :name => 'change_user_details_page_2',
                     :replace => 'h1',
                     :text => %q(
                        <h1>Area personale</h1>
                        <p class="text-warning">In quest'area puoi visualizzare i tuoi dati personali,
                          verificare lo stato degli ordini correnti e tenere aggiornato l'indirizzo email che
                          possiamo usare per contattarti.</p>
                     ))

Deface::Override.new(:virtual_path => 'spree/users/show',
                     :name => 'change_user_details_page_3',
                     :replace => 'h3',
                     :text => %q(
                        <h3>I tuoi ordini</h3>
                        <p class="text-warning">In questa sezione sono elencati gli ordini che hai completato.</p>
                     ))


Deface::Override.new(:virtual_path => 'spree/users/show',
                     :name => 'change_user_details_page_4',
                     :insert_before => 'div.account-my-orders',
                     :text => %q(
                        <% if @orders.present? %>
                          <div class="col-md-12 user-info-area">
                            <p class="text-warning">I dati di spedizione e fatturazione indicati di seguito si riferiscono
                            all'ultimo ordine inserito e sono qui indicati solo come riferimento. E' possibile modificarli durante
                            l'inoltro di un nuovo ordine.
                            </p>
                            <div class="col-md-3 col-sm-6">
                              <h4>Dati di spedizione</h4>
                              <%= render :partial => 'spree/shared/address', :locals => { :address => @orders.first.ship_address } %>
                            </div>
                            <div class="col-md-3 col-sm-6">
                              <h4>Dati di fatturazione</h4>
                              <%= render :partial => 'spree/shared/address', :locals => { :address => @orders.first.bill_address } %>
                            </div>
                          </div>
                        <% end %>
                     ))
