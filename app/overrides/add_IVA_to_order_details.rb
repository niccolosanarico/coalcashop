Deface::Override.new(:virtual_path => 'spree/shared/_address',
                     :name => 'add_IVA_to_porder_details',
                     :insert_after => 'div.org',
                     :text => '
                        <div class="partita_iva">
                          P.IVA <%= address.partita_iva %>
                        </div>
                    ')
