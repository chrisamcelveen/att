class Item < ActiveRecord::Base
  belongs_to :menu
  belongs_to :order
end
