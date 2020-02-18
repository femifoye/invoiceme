class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :string
      t.string :email_address_string
      t.string :website
      t.string :adress_line_1
      t.string :postal_code
      t.string :state
      t.string :city
      t.string :country
      t.string :phone
      t.string :currency

      t.timestamps
    end
  end
end
