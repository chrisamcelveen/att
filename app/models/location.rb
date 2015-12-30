class Location < ActiveRecord::Base
  belongs_to :menu
  belongs_to :order
  validates_formatting_of :zip, using: :us_zip
end
