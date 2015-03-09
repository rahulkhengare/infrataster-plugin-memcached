require 'infrataster'
require 'memcached'

module Infrataster
  module Resources
    class MemcachedResource < BaseResource
      Error = Class.new(StandardError)

      attr_reader :query
      attr_accessor :cache
       
      def initialize(query, options={})
        @query = query 
        @cache = nil
      end
    
      def to_s
        "Memcached : \"#{@query}\""
      end
    end
  end
end
