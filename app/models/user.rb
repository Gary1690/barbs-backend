class User < ApplicationRecord
  has_many :appointments
  has_many :invoices, through: :appointments
  has_many :customers, through: :appointments
  mount_uploader :picture, PictureUploader
end
