# infrataster-plugin-memcached
Plugin to test and query memcached server using infrataster

Memcached plugin for [Infrataster](https://github.com/rahulkhengare/infrataster-plugin-memcached)

## Installation

Add this line to your Gemfile:

    gem 'infrataster-plugin-memecached'

And then add the following line to your spec\_helper.rb:

    require 'infrataster-plugin-memcached'

## Usage

```ruby
describe server(:memcached) do
  describe memcached("stats") do
    it 'should show stats' do
      # checking version from memcached stats
      # for stats it returns hash 
      result[:version].should == ["1.4.4"]
    end
  end

  describe memcached("set 'status', 'success'") do
    it 'should set value' do
      # Setting value in memcached
      result.should == nil
    end
  end

  describe memcached("get 'status'") do
    it 'should get value' do
      # Getting value from memcached
      result.should == 'success'
    end
  end
end
```

You can specify hostname and port number by options passed to `Infrataster::Server.define`:

```ruby
Infrataster::Server.define(
  # ... 
  memcached: {host: 'localhost', port: 11211},
)
```


## TODO 
As infrataster used for testing behavior of servers (like connections)
I have implemented the basic functionality like set and get the value from memcached server. 
It also get the statistics of memcached server.
Currently it does not support following functionality 
- Functionality for getting multiple value in single get query 
- Functionality which specify the lifetime of variable in set query.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/infrataster-plugin-memcached/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

