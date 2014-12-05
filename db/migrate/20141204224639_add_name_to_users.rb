class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :name, :string
    add_column :spree_users, :lastname, :string
  end
end
