require 'infrataster'

module Infrataster
  module Resources
    class MemcachedResource < BaseResource
      Error = Class.new(StandardError)

      attr_reader :query

      def initialize(query, options = {})
        @query = query 
        @options = options
      end
    
      def to_s
        "Memcached : \"#{@query}\""
      end
    end
  end
end
