class Invoice < ApplicationRecord
  belongs_to :appointment
  has_many :invoice_lines
  has_many :services,through: :invoice_lines

end
