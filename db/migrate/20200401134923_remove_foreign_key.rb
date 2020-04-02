class RemoveForeignKey < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :invoices, :users
    remove_foreign_key :customers, :users
  end

end
