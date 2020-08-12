class CreateInvoiceLines < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_lines do |t|
      t.belongs_to :invoice, null: false, foreign_key: true
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
