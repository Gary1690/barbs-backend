class Customer < ApplicationRecord
  has_many :appointments
  has_many :invoices, through: :appointments
  has_many :users, through: :appointments
end
