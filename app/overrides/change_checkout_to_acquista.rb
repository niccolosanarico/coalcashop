Deface::Override.new(:virtual_path => 'spree/orders/edit',
                     :name => 'change_checkout_to_acquista',
                     :replace => 'erb[loud]:contains("Spree.t(:checkout)")',
                     :text => '
                        <div>Acquista</div>
                    ')
