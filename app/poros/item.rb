class Item
  attr_reader :name, :description, :unit_price, :merchant_id, :id
  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:attributes][:name]
    @description = attributes[:attributes][:description]
    @unit_price = attributes[:attributes][:unit_price]
    @merchant_id = attributes[:attributes][:merchant_id]
  end
end