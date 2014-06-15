class City < ActiveRecord::Base
  belongs_to :state
  belongs_to :country
  after_save do
    self.state.population=self.state.cities.map { |e|  e.population||=0.0}.reduce(:+)
    self.state.save
    self.state.country.population=self.state.country.states.map { |e| e.population||=0.0}.reduce(:+)
    self.state.country.save
    self.state.area=self.state.cities.map { |e|  e.area||=0.0}.reduce(:+)
    self.state.save
    self.state.country.area=self.state.country.states.map { |e| e.area||=0.0}.reduce(:+)
    self.state.country.save
  end
end
