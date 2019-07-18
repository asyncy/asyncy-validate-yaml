#!/usr/bin/env ruby

require 'json'
require 'sinatra'
require "sinatra/namespace"
require 'yaml'

set :port, 8080
set :bind, '0.0.0.0'
set :show_exceptions, false

get '/health' do
  response.body = 'OK'
end

post '/format' do
  data = JSON.parse request.body.read
  YAML.dump(data['data'])
end

namespace '/parse' do
  before do
    content_type :json
  end

  post do
    data = JSON.parse request.body.read
    YAML.load(data['data'])
  end

  after do
    response.body = JSON.dump(response.body)
  end
end

error do
  {'message': env['sinatra.error'].message}
end
