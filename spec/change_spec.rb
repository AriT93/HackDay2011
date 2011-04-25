require "#{File.dirname(__FILE__)}/spec_helper"

describe 'change' do
  before(:each) do
    @change = Change.new()
  end

  specify 'should be valid' do
    @change.should be_valid
  end

end
