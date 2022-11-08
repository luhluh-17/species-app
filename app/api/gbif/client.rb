# frozen_string_literal: true

module Gbif
  class Client
    def self.connection
      @connection ||= Faraday.new do |f|
        f.url_prefix = ENV['BASE_URL']
        f.request :json
        f.response :json
        f.adapter Faraday.default_adapter
        f.use Faraday::Response::RaiseError
      end
    end

    def self.call(http_method:, endpoint:, args: {})
      response = connection.send(http_method, endpoint, args)
      { code: response.status, status: 'Success', data: response.body }
    rescue Faraday::Error => e
      { code: e.response[:status], status: e.message, data: Error.map(e.response[:status]) }
    end
  end
end
