class Order < ActiveRecord::Base
  has_one :business
  has_one :location
  has_one :item
  has_one :modifier
end
