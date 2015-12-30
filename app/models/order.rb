class Order < ActiveRecord::Base
  has_one :business
  has_one :location
end
