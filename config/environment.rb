# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

Bundler.require :default, ENV.fetch('RACK_ENV')

Dotenv.load

Dir[File.expand_path('../app/**/*.rb', __dir__)].sort.reverse.each do |f|
  require f
end

Dir[File.expand_path('../config/initializers/*.rb', __dir__)].sort.reverse.each do |f|
  require f
end

require 'mongoid'
Mongoid.load!('mongoid.yml')
