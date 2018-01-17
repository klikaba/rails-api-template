# frozen_string_literal: true

module Docs
  module V1
    module Users
      extend Dox::DSL::Syntax
      document :api do
        resource 'Users' do
          endpoint '/api/v1/users'
          group 'Users'
        end
      end

      document :create do
        action 'Create a user'
      end

      document :show do
        action 'Get a user'
      end
    end
  end
end
