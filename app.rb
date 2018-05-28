require 'sinatra'
require 'sinatra/activerecord'

class Event < ActiveRecord::Base
  validates_presence_of :tags
end

post '/create_event' do
  payload = JSON.parse(request.body.read)
  Event.create!(tags: payload['tags'])
  
  content_type :json
  '{}'
end
