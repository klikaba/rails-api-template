# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Country', type: :request do
  include Docs::V1::Countries::Api

  describe 'authorized' do
    let!(:user) { create(:user) }
    let!(:application) { create(:oauth_application) }
    let!(:token) do
      create(:oauth_token, :with_refresh_token,
             application: application, resource_owner_id: user.id)
    end

    describe 'list countries' do
      include Docs::V1::Countries::Index

      it 'returns countries', :dox do
        get '/api/v1/countries/',
            headers: { 'Authorization': "bearer #{token.token}" },
            as: :json
        expect(response).to have_http_status(200)
      end
    end
  end
end
