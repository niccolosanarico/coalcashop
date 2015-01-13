# This migration comes from spree_bank_transfer (originally 20140612131656)
class AddColAdditionalDetailsToBanks < ActiveRecord::Migration
  def change
    add_column :spree_banks, :additional_details, :text
  end
end
