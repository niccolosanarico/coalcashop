Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                     :name => 'remove_coupons_from_payment_form',
                     :remove => 'p[data-hook="coupon_code"]'
                     )
