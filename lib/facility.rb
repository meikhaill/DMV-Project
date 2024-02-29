class Facility
  attr_reader :name, :address, :phone, :services, :fees

  def initialize(thing)
    @name = thing[:name]
    @address = thing[:address]
    @phone = thing[:phone]
    @services = []
    @registered = []
    @fees = 0
  end
  
  def name
    @name
  end

  def registered_vehicles
    @registered
  end

  def collected_fees
    @fees
  end

  def register_vehicle(vehicle)
    if vehicle.registration_date == nil

      @fees ||=  0
      @vehicle = vehicle
      time1 = Time.now
      @registered << vehicle
      vehicle.registration_date = Time.now
      
      if vehicle.plate_type == :regular || vehicle.plate_type == :antique
        @fees += 100
      elsif
        vehicle.engine == :ev
        @fees += 125
      end
      
      if Date.today.year - vehicle.year > 25
        vehicle.plate_type = :antique 
      elsif vehicle.engine == :ev
        vehicle.plate_type = :ev
      else 
        vehicle.plate_type = :regular
      end
    else
      puts "No"
    end
  end

  def registration_date(vehicle)
    @registration_date
  end

  def add_service(service)
    @services << service
  end

  def self.create_from_new_york(locations)
    locations.map do |location|
      Facility.new(
        name: location[:office_name],
          address: location[:street_address_line_1],
          city: location[:city],
          state: location[:state],
          zip_code: location[:zip_code],
          phone: location[:public_phone_number],
      )
    end
  end

    def self.create_from_missouri(locations)
    locations.map do |location|
      Facility.new(
        name: location[:office_name],
          address: location[:street_address_line_1],
          city: location[:city],
          state: location[:state],
          zip_code: location[:zip_code],
          phone: location[:public_phone_number],
      )
    end
  end

  def renew_drivers_license(registrant)
     if @services.include?('Renew License')
      @registrant = registrant
      if @registrant.license_data[:license] == true 
        @registrant.license_data[:renewed] = true
      elsif @registrant.license_data[:license] == false
        puts "not permissible"
      else 
        puts "nil value"
      end
    end
  end

  def administer_road_test(registrant)
    if @services.include?('Road Test')
      @registrant = registrant
      if @registrant.license_data[:written] == true 
        @registrant.license_data[:license] = true
      elsif @registrant.license_data[:written] == false
        puts "not permissible"
      end
    else
      puts "NO"
    end
    # if @services.include?('Road Test')
    #   @registrant = registrant
    #   if @registrant.license_data[:written] == true
    #     @registrant.license_data[:license] == true
    #   else
    #     @registrant.license_data[:license] == false
    #   end
    # end

  end

  def administer_written_test(registrant)
    if @services.include?('Written Test')
      @registrant = registrant
      if @registrant.age >= 16 && @registrant.permit == true
        @registrant.license_data[:written] = true
      elsif @registrant.age < 16 || @registrant.permit == false
        puts "not permissible"
      end
    else
      puts "NO"
    end
  end
end
