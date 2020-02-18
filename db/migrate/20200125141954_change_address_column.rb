class ChangeAddressColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :customers, :adress_line_1, :address_line_1
  end
end
