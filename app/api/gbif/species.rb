# frozen_string_literal: true

module Gbif
  class Species
    def self.all
      Client.call(
        http_method: 'get',
        endpoint: 'species/search',
        args: {
          q: 'philippines'
        }
      )
    end

    def self.search(name)
      Client.call(http_method: 'get', endpoint: 'species/search', args: { name: })
    end
  end
end
