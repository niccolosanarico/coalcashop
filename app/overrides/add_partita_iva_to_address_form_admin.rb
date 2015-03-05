Deface::Override.new(:virtual_path => 'spree/admin/shared/_address_form',
                     :name => 'add_partita_iva_to_address_form_admin',
                     :insert_after => 'erb[silent]:contains("if Spree::Config[:company]")',
                     :text => %q(
                       <div class="field <%= "#{type}-row" %>">
                         <%= f.label :partita_iva, "Partita IVA" %>
                         <%= f.text_field :partita_iva, :class => 'fullwidth' %>
                       </div>
                     ))
