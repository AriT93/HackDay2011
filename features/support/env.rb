# Generated by cucumber-sinatra. (Mon Apr 25 08:28:13 -0500 2011)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'application.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

DataMapper.setup(:default, "sqlite3::memory:")
DataMapper.auto_migrate!

# w = Workgroup.new(:workgroup_number => "WG99999")
# w.save

Capybara.app = Sinatra::Application

class ChangeAppWorld
  include Capybara
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  Sinatra::Application.new
end
