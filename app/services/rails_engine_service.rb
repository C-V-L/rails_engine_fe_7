class RailsEngineService
  def self.conn 
    Faraday.new(url: "http://localhost:3000/")
  end

  def self.merchants
    get_url("api/v1/merchants")
  end

  def self.merchant(id)
    get_url("api/v1/merchants/#{id}")
  end

  def self.merchant_items(id)
    get_url("api/v1/merchants/#{id}/items")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end