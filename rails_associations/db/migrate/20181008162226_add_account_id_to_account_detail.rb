class AddAccountIdToAccountDetail < ActiveRecord::Migration[5.2]
  def change
    add_reference :account_details, :account
  end
end
