# This migration comes from spree_bank_transfer (originally 20140519125402)
class AddBankNameAccountNumberAndTransactionReferenceNumberToPayments < ActiveRecord::Migration
  def change
    add_column :spree_payments, :bank_name, :string
    add_column :spree_payments, :account_no, :string
    add_column :spree_payments, :transaction_reference_no, :string
  end
end
