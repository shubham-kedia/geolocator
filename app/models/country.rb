class Country < ActiveRecord::Base
  has_many :cities, :through => :states
  has_many :states
  belongs_to :currency_type
  belongs_to :time_zone
end
