require 'rspec'
require 'infrataster/resources'

module Infrataster
  module Helpers
    module ResourceHelper
      def memcached(*args)
        Resources::MemcachedResource.new(*args)
      end
    end
  end
end
