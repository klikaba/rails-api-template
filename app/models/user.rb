# frozen_string_literal: true

class User < ApplicationRecord #:nodoc:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {
    default: 0,
    admin: 1
  }

  def active_for_authentication?
    super && admin?
  end
end
