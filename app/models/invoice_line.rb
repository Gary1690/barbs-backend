class InvoiceLine < ApplicationRecord
  belongs_to :invoice
  belongs_to :service
end
