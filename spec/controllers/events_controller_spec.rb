require 'spec_helper'


describe EventsController do
	before :each do
	@access_token = 'access-token'
	end

	describe 'GET #sync' do
	    it "> response with 200" do
	    	get :sync, token:@access_token
	    	expect(response.status).to eq(200)
	    end
	end
end
