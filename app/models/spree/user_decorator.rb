Spree::User.class_eval do
  after_create :add_to_newsletter
  after_update :check_newsletter

  private

    def add_to_newsletter
      # Add check for acceptance of newsletter subscription
      if newsletter_optin
        Gibbon::API.lists.subscribe(
          {
            :id => ENV['MAILCHIMP-LIST-ID'],
            :email => {:email => self.email},
            :double_optin => false,
            :update_existing => true
          })
      end
    end

    def remove_from_newsletter
      if !newsletter_optin
        Gibbon::API.lists.unsubscribe(
          {
            :id => ENV['MAILCHIMP-LIST-ID'],
            :email => {:email => self.email},
            :delete_member => true
          })
      end
    end

    def check_newsletter
      # Check whether on update the user has modified a preference
      subscribers = Gibbon::API.lists.member_info(
        {
          :id => ENV['MAILCHIMP-LIST-ID'],
          :emails => [{:email => self.email}]
        })

      if newsletter_optin
        if subscribers["success_count"] < 1
          # puts "Adding #{self.email} to newletter"
          add_to_newsletter
        end
      else
        if subscribers["success_count"] >= 1
          # puts "Removing #{self.email} from newletter"
          remove_from_newsletter
        end
      end

    end

end
