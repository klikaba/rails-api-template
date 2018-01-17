# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :request do
  include Docs::V1::Users::Api

  describe 'create user' do
    include Docs::V1::Users::Create

    describe 'valid data' do
      let!(:payload) do
        {
          user: {
            email: 'user@example.com',
            password: 'password'
          }
        }
      end

      it 'creates new user', :dox do
        expect { post '/api/v1/users', params: payload, as: :json }
          .to change(User, :count).by(1)
      end

      it 'returns status 200' do
        post '/api/v1/users', params: payload, as: :json
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'authorized' do
    let!(:user) { create(:user) }
    let!(:application) { create(:oauth_application) }
    let!(:token) do
      create(:oauth_token, :with_refresh_token,
             application: application, resource_owner_id: user.id)
    end

    describe 'show user' do
      include Docs::V1::Users::Show

      it 'returns a user', :dox do
        get "/api/v1/users/#{user.id}",
            headers: { 'Authorization': "bearer #{token.token}" },
            as: :json
        expect(response).to have_http_status(200)
      end
    end
  end
end
