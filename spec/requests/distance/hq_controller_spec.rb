# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

describe 'hq', type: :request do
  it 'returns with a distance in meters' do
    params = { address: 'keleti+budapest', destination: 'electool+budapest' }
    headers = { mock_token: '123456' }
    get '/requests/distance/hq', params: params, headers: headers

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body)['distance']).not_to eq 0
  end

  it 'returns with a distance with different address' do
    params = { address: 'mom+park+budapest', destination: 'electool+budapest' }
    headers = { mock_token: '123456' }
    get '/requests/distance/hq', params: params, headers: headers

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body)['distance']).not_to eq 0
  end
end
