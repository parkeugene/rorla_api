require 'spec_helper'

feature 'External request' do
  it 'queries RORlab events on Facebook' do
    uri = URI('https://graph.facebook.com/151742221561550/events')

    response = JSON.load(Net::HTTP.get(uri))

    expect(response['data'].first['name']).to eq '제60회 ROR Lab.'
  end
end