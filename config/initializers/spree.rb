# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
require 'spree/product_filters'

Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  #config.name = "Coalca Shop"

  # Display field for company name
  config.company = true

  #Config email

  #config.override_actionmailer_config = false

  #config.mails_from = "Coalca Shop <noreply@coalca.it>"

  #config.allow_ssl_in_staging = true

  config.allow_guest_checkout = false
  config.show_raw_product_description = false
  config.show_variant_full_price = true

  config.admin_interface_logo = 'coalca_logo.png'
  config.logo = 'coalca_logo.png'

end

Spree.user_class = "Spree::User"

# Adding attributes to models

Spree::PermittedAttributes.address_attributes << :partita_iva
Spree::PermittedAttributes.user_attributes << :newsletter_optin
Spree::PermittedAttributes.user_attributes << :name
Spree::PermittedAttributes.user_attributes << :lastname

# Rails.application.config.spree.calculators.shipping_methods << Spree::Calculator::Shipping::Sda
# Rails.application.config.spree.calculators.shipping_methods << Spree::Calculator::Shipping::Sda2
