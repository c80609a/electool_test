# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

describe 'hq', type: :request do
  it 'returns with a distance in meters' do
    params = { address: 'Keleti pályaudvar' }
    headers = { mock_token: '123456' }
    get '/requests/distance/hq', params: params, headers: headers

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body)['distance']).to eq 0
  end
end
