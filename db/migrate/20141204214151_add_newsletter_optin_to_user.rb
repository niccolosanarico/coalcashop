class AddNewsletterOptinToUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :newsletter_optin, :boolean
  end
end
