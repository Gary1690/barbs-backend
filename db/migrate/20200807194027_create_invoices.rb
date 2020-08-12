class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.float :discount
      t.belongs_to :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
