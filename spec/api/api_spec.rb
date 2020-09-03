# frozen_string_literal: true

RSpec.describe API::API do
  include Rack::Test::Methods
  let(:app) { API::API.new }
  let(:headers) { { 'Content-Type' => 'application/json' } }

  describe 'GET /health' do
    it 'returns OK' do
      response = get '/api/v1/health', {}, headers
      expect(response.status).to eq 200
      expect(parsed(response.body)).to eq('message' => 'OK')
    end
  end


  private

  def parsed(body)
    JSON.parse(body)
  end
end
