Deface::Override.new(:virtual_path => 'spree/address/_form',
                     :name => 'add_partita_iva_to_address_form',
                     :insert_after => 'p.field:nth-child(3)',
                     :text => '
                         <p class="field" id=<%="#{address_id}partita_iva" %>>
                         <%= form.label :partita_iva, Spree.t(:partita_iva) %><span class="required">*</span><br />
                         <%= form.text_field :partita_iva, :class => "form-control" %>
                       </p>
                      ')
