class Business < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  has_many :locations
end
