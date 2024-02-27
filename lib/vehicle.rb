require 'date'

class Vehicle
  attr_accessor :vin, :year, :make, :model, :engine, :plate_type, :registration_date

  # attr_reader :vin,
  #             :year,
  #             :make,
  #             :model,
  #             :engine,
  #             :plate_type

  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    @plate_type = vehicle_details[:plate_type] || :regular
    @registration_date = registration_date
  end

  def registration_date
    @registration_date 
  end

  def antique?
    Date.today.year - @year > 25
  end

  def electric_vehicle?
    @engine == :ev
  end
end