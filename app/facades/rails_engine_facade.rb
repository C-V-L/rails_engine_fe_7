class RailsEngineFacade
  def initialize(params)
    @params = params
  end

  def merchants
    merchants = RailsEngineService.merchants
    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def merchant_items
    items = RailsEngineService.merchant_items(@params[:id])
    items[:data].map do |item|
      Item.new(item)
    end
  end

  def merchant
    merchant = RailsEngineService.merchant(@params[:id])
    Merchant.new(merchant[:data])
  end
end