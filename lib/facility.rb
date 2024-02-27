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
    @fees ||=  0
    @vehicle = vehicle
    time1 = Time.now
    @registered << vehicle
    vehicle.registration_date = Time.now
    @fees += 100
     if Date.today.year - vehicle.year > 25
      plate_type = :antique
    end

    # registration_time = Time.now
    # @registered << vehicle
    # vehicle.registration_time = Time.now
  end

  def registration_date(vehicle)
    @registration_date
  end

  

  def add_service(service)
    @services << service
  end

  def administer_written_test(registrant)
    @registrant = registrant
    if @registrant.age >= 16 && @registrant.permit == true
      @registrant.license_data[:written] = true
    elsif @registrant.age < 16 || @registrant.permit == false
      puts "not permissible"
    end
    
  end
  
end