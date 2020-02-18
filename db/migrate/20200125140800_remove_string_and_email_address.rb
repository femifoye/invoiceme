class RemoveStringAndEmailAddress < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :string
    remove_column :customers, :email_address_string
  end
end
