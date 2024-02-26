class Facility
  attr_reader :name, :address, :phone, :services

  

  def initialize(thing)
    @name = thing[:name]
    @address = thing[:address]
    @phone = thing[:phone]
    @services = []
    @registered []
  end
  
  def name
    @name
  end

  def registered_vehicles
    @registered
  end

  def collected_fees
    fees = 0
  end

  def register_vehicle(vehicle)
    @vehicle = vehicle
    @registered = registered
    registered = []
    registered.push(vehicle)
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