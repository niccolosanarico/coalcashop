Spree::User.class_eval do

  def after_confirmation
    # Add check for acceptance of newsletter subscription
    # TODO

    mailchimp.lists.subscribe(MAILCHIMP-LIST-ID,
      {
        "email" => this.email
      })
  end

end
