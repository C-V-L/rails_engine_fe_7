class MerchantsController < ApplicationController
  def index
    @facade = RailsEngineFacade.new(params)
  end
end