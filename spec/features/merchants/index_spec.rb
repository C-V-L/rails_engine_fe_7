require 'rails_helper'

RSpec.describe 'Merchants Index' do
  before :each do
    VCR.use_cassette(:merchant_index, serialize_with: :json) do
      visit '/merchants'
    end
  end
  describe 'As a visitor' do
    describe 'When I visit the merchants index page' do
      it 'displays all merchants' do
        expect(page).to have_content('All Merchants')
        expect(page).to have_link("Schroeder-Jerde")
      end
    end
  end
end