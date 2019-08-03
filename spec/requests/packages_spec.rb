require 'rails_helper'


RSpec.describe 'Packages API', type: :request do
  let!(:packages) { FactoryGirl.create(:package) }

  # Packages index action
  describe 'GET /api/v1/packages' do
    before { get api_v1_packages_path }

    it 'returns packages' do
      expect(json_body).not_to be_empty
      expect(json_body.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
