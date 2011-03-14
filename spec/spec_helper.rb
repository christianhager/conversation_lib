require File.dirname(__FILE__) + '/../lib/conversation_lib'

require 'rspec'
require 'rack/test'


RSpec.configure do |conf|
  
  #cleanup
  conf.after(:each) do
    
  end

  conf.include Rack::Test::Methods
end
