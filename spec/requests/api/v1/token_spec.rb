# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Token Manegment', type: :request do
  include Docs::V1::Tokens::Api

  let!(:application) { create(:oauth_application) }
  let!(:user)        { create(:user) }

  describe 'get access token with grant_type=password' do
    include Docs::V1::Tokens::PasswordGrant

    it 'returns token data', :dox do
      post '/oauth/token?grant_type=password', params: {
        username: user.email,
        password: 'password',
        client_id: application.uid,
        client_secret: application.secret
      }, as: :json

      parsed = response.parsed_body
      expect(parsed['access_token']).not_to be_empty
      expect(parsed['refresh_token']).not_to be_empty
      expect(parsed['expires_in']).to be_kind_of(Numeric)
      expect(parsed['created_at']).to be_kind_of(Numeric)
      expect(parsed['token_type']).to eq('bearer')
    end
  end

  describe 'refresh access token with grant_type=refresh_token' do
    include Docs::V1::Tokens::RefreshGrant

    let!(:token) do
      create(:oauth_token, :with_refresh_token,
             application: application, resource_owner_id: user.id)
    end

    it 'returns refreshed token', :dox do
      post '/oauth/token?grant_type=refresh_token', params: {
        refresh_token: token.refresh_token,
        client_id: application.uid,
        client_secret: application.secret
      }, as: :json

      parsed = response.parsed_body

      expect(parsed['access_token']).not_to be_empty
      expect(parsed['refresh_token']).not_to be_empty
      expect(parsed['expires_in']).to be_kind_of(Numeric)
      expect(parsed['created_at']).to be_kind_of(Numeric)
      expect(parsed['token_type']).to eq('bearer')
    end
  end
end
