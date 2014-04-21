require 'sinatra/base'

class FakeFacebook < Sinatra::Base
  get '/:groupid/events' do
    json_response 200, 'events.json'
  end

  private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
  end
end