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
        # query parse 
        query, arguments = resource.query.split(' ', 2) 
        if query == "set" or query == "get"
          arguments = arguments.scan(/'[^']*'/).map{|n| eval n}  
        end 
        
        $cache = Memcached.new("#{options[:host]}:#{options[:port]}")
        if $cache.respond_to?(query)
          $cache.method(query).call(*arguments)
        end  
      end
    end
  end
end 
