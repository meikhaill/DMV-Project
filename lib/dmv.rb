class Dmv

  def initialize
    @facilities = []
    facilities = [@facility_1,@facility_2,@facility_3]
  end

  def facilities 
    @facilities 
  end

  def add_facility(facility)
    @facilities << facility
  end

  def facilities_offering_service(service)
    @facilities.find do |facility|
      facility.services.include?(service)
    end
  end
end