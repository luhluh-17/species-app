# frozen_string_literal: true

module Gbif
  class Error
    HTTP_BAD_REQUEST_CODE = 400
    HTTP_UNAUTHORIZED_CODE = 401
    HTTP_FORBIDDEN_CODE = 403
    HTTP_NOT_FOUND_CODE = 404
    HTTP_UNPROCESSABLE_ENTITY_CODE = 429

    def self.map(code)
      case code
      when HTTP_BAD_REQUEST_CODE
        'Bad Request. Please try again!'
      when HTTP_UNAUTHORIZED_CODE
        'Unauthorized Request. Please try again!'
      when HTTP_FORBIDDEN_CODE
        'Forbidden Request'
      when HTTP_NOT_FOUND_CODE
        'Invalid Request'
      when HTTP_UNPROCESSABLE_ENTITY_CODE
        'Too Many Request. Please try again later!'
      else
        'Service Unavailable. Please try again!'
      end
    end
  end
end
