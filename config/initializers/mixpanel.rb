require 'spree_mixpanel'
require 'spree_mixpanel/engine'

Spree::Mixpanel::Config.connection_token = '38aefb55a006c8469fb9cb775b2f6da5'
Spree::Mixpanel::Config.push_order_charges = true
