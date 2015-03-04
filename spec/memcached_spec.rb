require 'spec_helper'

describe server(:memcached) do
  describe memcached("stats") do
    it 'should show stats' do
      # checking version from memcached stats
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
