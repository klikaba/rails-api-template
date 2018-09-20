# frozen_string_literal: true

module Api
  module V1
    class ApiController < ActionController::API #:nodoc:
      before_action :doorkeeper_authorize!

      rescue_from ActionController::ParameterMissing, with: :render_bad_request

      def current_resource_owner
        User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
      end

      def render_bad_request(parameter_missing_exception)
        error = {
          parameter_missing_exception.param => ['parameter is required']
        }
        render json: { errors: [error] }, status: :unprocessable_entity
      end
    end
  end
end
