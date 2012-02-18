require 'faraday'


  #conn = Faraday.new(:url => 'https://www.googleapis.com/calendar/v3') do |builder|
  #builder.use Faraday::Request::UrlEncoded  # convert request params as "www-form-urlencoded"
 # builder.use Faraday::Response::Logger     # log the request to STDOUT
 # builder.use Faraday::Adapter::NetHttp     # make http requests with Net::HTTP

response = Faraday.post do |req|
  req.url 'https://www.googleapis.com/calendar/v3/freeBusy?key=AIzaSyBsObpXXF6DQoZWj2U9QxoEQ4vdZ6GvNfI'
  req.headers['Content-Type'] = 'application/json'
  req.body = '{ "items": [ { "id": "wilhelm303@googlemail.com" } ], "timeMin": "2011-02-14T00:09:35Z", "timeMax": "2011-02-14T00:09:40Z" }'
end

#response.body
#puts response.body

#end

#response = Faraday.post 'https://www.googleapis.com/calendar/v3/freeBusy', 'key' => 'AIzaSyBsObpXXF6DQoZWj2U9QxoEQ4vdZ6GvNfI'
puts response.body
