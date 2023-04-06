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
end