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
end