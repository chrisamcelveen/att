class Item < ActiveRecord::Base
  belongs_to :menu
  belongs_to :order
  has_many :modifiers
end
