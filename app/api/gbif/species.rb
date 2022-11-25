# frozen_string_literal: true

module Gbif
  class Species
    def self.all
      Client.call(
        http_method: 'get',
        endpoint: 'species/search',
        args: {
          datasetKey: 'd7dddbf4-2cf0-4f39-9b2a-bb099caae36c',
          q: 'philippines'
        }
      )
    end

    def self.search(name)
      Client.call(
        http_method: 'get',
        endpoint: 'species/search',
        args: {
          datasetKey: 'd7dddbf4-2cf0-4f39-9b2a-bb099caae36c',
          name:
        }
      )
    end

    def self.show(id)
      Client.call(http_method: 'get', endpoint: "species/#{id}", args: {})
    end
  end
end
