# frozen_string_literal: true

module Api
  module V1
    class CountriesController < ApiController #:nodoc:
      def index
        countries = IsoCountryCodes.all.map do |c|
          { name: c.name, code: c.alpha2 }
        end

        render json: { countries: countries }
      end
    end
  end
end
