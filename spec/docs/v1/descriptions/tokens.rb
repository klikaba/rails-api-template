# frozen_string_literal: true

module Docs
  module V1
    module Tokens
      extend Dox::DSL::Syntax
      document :api do
        resource 'Token' do
          endpoint '/oauth/token'
          group 'Authentication'
        end
      end

      document :password_grant do
        action 'Get access token' do
          path '/oauth/token?grant_type=password'
          desc 'Exchange username and password for access token'
        end
      end

      document :refresh_grant do
        action 'Refresh access token' do
          path '/oauth/token?grant_type=refresh_token'
          desc 'Refresh expired access token'
        end
      end
    end
  end
end
