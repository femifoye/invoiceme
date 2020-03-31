class RemoveColumnsFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :email
    remove_column :users, :password
    remove_column :users, :address_line_1
    remove_column :users, :state
    remove_column :users, :city
    remove_column :users, :postal_code
    remove_column :users, :country
    remove_column :users, :website
    remove_column :users, :company   
  end
end
