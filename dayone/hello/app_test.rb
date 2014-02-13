require_relative "app"
require "rspec"
require "rack/test"
describe "Hello application" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
  it "says hello" do
    get "/hello"
    last_response.should be_ok
    last_response.body.should == "Eat an entire bag of dicks, Sinatra!"
  end
end