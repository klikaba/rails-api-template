# frozen_string_literal: true

module CustomTokenResponse #:nodoc:
  def body
    data = {
      user_id:  @token.resource_owner_id
    }

    super.merge(data)
  end
end
