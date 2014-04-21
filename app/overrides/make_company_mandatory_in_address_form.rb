Deface::Override.new(:virtual_path => 'spree/address/_form',
                     :name => 'make_company_mandatory_in_address_form',
                     :replace => 'p.field:nth-child(3)',
                     :text => '
                       <p class="field" id=<%="#{address_id}company" %>>
                        <%= form.label :company, Spree.t(:company) %><span class="required">*</span><br />
                        <%= form.text_field :company, :class => "form-control" %>
                      </p>
                    ')
