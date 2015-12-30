class Business < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  has_many :locations
  validates_formatting_of :phone_number, using: :us_phone
  validates_formatting_of :zip, using: :us_zip
end
