class Registrant 
  def initialize(name, age, permit = false)
  @name = name 
  @age = age
  @permit = permit
  @license_data = {:written=>false, :license=>false, :renewed=>false}
  # license_data = {:written=>false, :license=>false, :renewed=>false}
  end

  def permit?
    @permit == true ? true : false
  end

  def name 
    @name
  end

  def age
    @age
  end

  def permit
    @permit
  end

  def license_data
   @license_data
  end

  def earn_permit
    @permit = true 
  end
end