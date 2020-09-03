# frozen_string_literal: true

require 'rack'
require 'grape'

require File.expand_path('config/environment', __dir__)

run API::API
