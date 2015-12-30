class Business < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  has_many :locations
  validates_formatting_of :phone_number, using: :us_phone
end
