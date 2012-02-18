class ApplicationController < ActionController::Base
  protect_from_forgery

require 'faraday_middleware'

def gcal
  conn = Faraday.new(:url => 'https://www.googleapis.com/calendar/v3') do |builder|
  builder.use Faraday::Request::UrlEncoded  # convert request params as "www-form-urlencoded"
  builder.use Faraday::Response::Logger     # log the request to STDOUT
  builder.use Faraday::Adapter::NetHttp     # make http requests with Net::HTTP

response = conn.post do |req|
  req.url '/freeBusy'
  req.headers['Content-Type'] = 'application/json'
  req.body = '{ "items": ["id": "wilhelm303@googlemail.com"], "timeMin": "2011-02-14T00:09:35Z",
 "timeMax": "2011-02-14T00:09:40Z" }'
end

response.body


end
