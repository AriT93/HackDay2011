ENV['RACK_ENV'] = 'test'
require 'rubygems'
require 'sinatra'

require 'rack/test'

# # set test environment
# Sinatra::Base.set :environment, :test
# Sinatra::Base.set :run, false
# Sinatra::Base.set :raise_errors, true
# Sinatra::Base.set :logging, false

require 'application'

# establish in-memory database for testing
DataMapper.setup(:default, "sqlite3::memory:")

module RSpecMixinExample
  include Rack::Test::Methods
  def app() Sinatra::Application
  end
end
RSpec.configure do |config|
  # reset database before each example is run
  config.include RSpecMixinExample
  config.before(:each) { DataMapper.auto_migrate! }
end
