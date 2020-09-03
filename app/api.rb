# frozen_string_literal: true

module API
  class API < Grape::API
    prefix :api
    format :json

    version 'v1', using: :path, cascade: false do
    end
  end
end
