require 'rails_helper'

RSpec.describe 'Merchants Show' do
  before :each do
    VCR.use_cassette(:merchant_show, serialize_with: :json) do
      visit '/merchants/1'
    end
  end

  describe "As a visitor when I visit a merchant's show page" do
    it 'displays all the merchants items' do
      expect(page).to have_content('Schroeder-Jerde')
      expect(page).to have_content('Item Nemo Facere')
    end
  end
end