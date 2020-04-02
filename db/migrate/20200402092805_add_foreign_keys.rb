class AddForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :invoices, :users, column: :user_id
    add_foreign_key :customers, :users, column: :user_id
  end
end
