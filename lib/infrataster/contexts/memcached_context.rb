require 'infrataster'
require 'memcached'

module Infrataster
  module Contexts
    class MemcachedContext < BaseContext
      def result 
        options = {host: 'localhost', port: 11211}
        if server.options[:memcached]
          options = options.merge(server.options[:memcached])
        end

        # Query  parse 
        query, arguments = resource.query.split(' ', 2) 
        # For set and get query parse and get arguments
        if query == "set" or query == "get"
          arguments = arguments.scan(/'[^']*'/).map{|n| eval n}  
        end 

        # Initialize the memcached obj
        resource.cache = Memcached.new("#{options[:host]}:#{options[:port]}")
        if resource.cache.respond_to?(query)
          # Run query 
          resource.cache.method(query).call(*arguments)
        end  
      end
    end
  end
end 
