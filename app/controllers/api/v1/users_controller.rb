# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApiController #:nodoc:
      before_action :doorkeeper_authorize!, except: [:create]

      def create
        user = User.new(user_params)

        if user.save
          render json: user
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

      def show
        render json: current_resource_owner
      end

      private

      def user_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end
