require 'bundler'
Bundler.setup(:default)
require 'thin'
require 'sidekiq'
require 'sidekiq/web'

redis_url = ENV['REDIS_URL'] || 'redis://localhost:6379'

# If your client is single-threaded, we just need a single connection in our Redis connection pool
Sidekiq.configure_client do |config|
  config.redis = { :namespace => 'mailcannon', :size => 1, :url => redis_url }
end

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  right_password = ENV['MAILCANNON_MONITOR_PASSWORD']||'changeme'
  username == 'mailcannon' and password == right_password
end

map '/' do
  run Sidekiq::Web
end