class Trail
  attr_reader :id, :name, :city, :state, :country, :lat, :lng, :description, :directions, :activities
  def initialize(data)
    @id          = data['id']
    @name        = data['name']
    @city        = data['city']
    @state       = data['state']
    @country     = data['country']
    @lat         = data['lat']
    @lng         = data['lng']
    @description = data['description']
    @directions  = data['directions']
    @activities  = data['activities']
  end

end
