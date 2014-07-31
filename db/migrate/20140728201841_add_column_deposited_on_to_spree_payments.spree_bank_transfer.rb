# This migration comes from spree_bank_transfer (originally 20140530055151)
class AddColumnDepositedOnToSpreePayments < ActiveRecord::Migration
  def change
    add_column :spree_payments, :deposited_on, :date
  end
end
