class AddIvaToSpreeAddress < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :partita_iva, :string
  end
end
