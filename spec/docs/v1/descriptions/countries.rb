# frozen_string_literal: true

module Docs
  module V1
    module Countries
      extend Dox::DSL::Syntax
      document :api do
        resource 'Countries' do
          endpoint '/api/v1/countries'
          group 'Countries'
        end
      end

      document :index do
        action 'Get country list'
      end
    end
  end
end
