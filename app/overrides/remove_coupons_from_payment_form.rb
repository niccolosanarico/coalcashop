Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                     :name => 'remove_coupons_from_payment_form',
                     :remove => 'p[data-hook="coupon_code"]'
                     )

Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                     :name => 'compress_existing_card_expiration_1',
                     :remove => 'erb[loud]:contains("card.year")'
                     )

Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                     :name => 'compress_existing_card_expiration_2',
                     :replace => 'erb[loud]:contains("card.month")',
                     :text => '<%= card.month.to_s + "/" + card.year.to_s %>'
                     )
