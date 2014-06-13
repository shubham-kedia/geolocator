class CurrencyType < ActiveRecord::Base
  has_one :country
end
