require_relative 'data.rb'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get '/' do
  slim :'index/index'
end

get '/user_profile' do
  slim :'user/index'
end
