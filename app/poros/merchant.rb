class Merchant
  attr_reader :id, :name
  
  def initialize(attrtibutes)
    @id = attrtibutes[:id]
    @name = attrtibutes[:attributes][:name]
  end
end