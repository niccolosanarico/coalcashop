Spree::User.class_eval do
  after_create :add_to_newsletter

  private

    def add_to_newsletter
      # Add check for acceptance of newsletter subscription
      # TODO
      if newsletter_optin
        Gibbon::API.lists.subscribe(
          {
            :id => ENV['MAILCHIMP-LIST-ID'],
            :email => {:email => self.email},
            :double_optin => false
          })
      end
    end

end
