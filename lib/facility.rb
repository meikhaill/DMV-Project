class Facility
  attr_reader :name, :address, :phone, :services

  def initialize(thing)
    @name = thing[:name]
    @address = thing[:address]
    @phone = thing[:phone]
    @services = []
  end
  
  def name
    @name
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