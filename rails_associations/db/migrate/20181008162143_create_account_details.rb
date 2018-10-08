class CreateAccountDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :account_details do |t|
      t.string :detail

      t.timestamps
    end
  end
end
