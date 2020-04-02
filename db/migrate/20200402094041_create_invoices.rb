class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.text :description
      t.text :to
      t.string :due
      t.datetime :date
      t.text :entries
      t.float :total
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
