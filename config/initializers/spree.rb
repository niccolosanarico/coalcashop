# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.site_name = "Coalca Shop"

  # Display field for company name
  config.company = true

  #Config email

  config.override_actionmailer_config = false
  config.mails_from = "noreply@coalca.it"
  #config.enable_mail_delivery = true
  #config.mail_domain = "coalca.it"
  #config.mail_host = "smtp.sendgrid.net"
  #config.mail_port = 587
  #config.smtp_username = "coalca"
  #config.smtp_password = "coalc4sendgrid"
end

Spree.user_class = "Spree::User"

# Adding attributes to models

Spree::PermittedAttributes.address_attributes << :partita_iva
