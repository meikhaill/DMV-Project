class VehicleFactory
  attr_reader :data
  def initialize
    @data 
  end

  def create_vehicles(registrations)
      registrations.map do |registration|
      Vehicle.new(
        engine: :ev, # Assuming all vehicles are electric
        make: registration[:make],
        model: registration[:model],
        vin: registration[:vin_1_10],
        year: registration[:model_year]
      )
    end
  end
end