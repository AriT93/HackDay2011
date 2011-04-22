require "#{File.dirname(__FILE__)}/spec_helper"

describe 'main application' do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  specify 'should show the default index page' do
    get '/'
    last_response.status.should == 302
  end

end
