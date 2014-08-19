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
  config.site_name = "Coalca Shop"

  # Display field for company name
  config.company = true

  #Config email

  config.override_actionmailer_config = false
  config.mails_from = "noreply@coalca.it"

  config.allow_ssl_in_staging = false

  config.allow_guest_checkout = false
end

Spree.user_class = "Spree::User"

# Adding attributes to models

Spree::PermittedAttributes.address_attributes << :partita_iva
