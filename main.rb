require 'sinatra'
require 'rest-client'
require 'json'

get '/' do
  "Hello World!"
end

get '/current/:zip' do
  RestClient.get "http://api.openweathermap.org/data/2.5/weather?zip=#{params['zip']},us&APPID=08fae83301d137e1e675f3d83d8707d9", {:accept => :json}
end

get '/fiveday/:zip' do
  json = RestClient.get "http://api.openweathermap.org/data/2.5/forecast?zip=#{params['zip']},us&APPID=08fae83301d137e1e675f3d83d8707d9", {:accept => :json}
  forecast = JSON.parse(json)

  samples = forecast['list']

  temps = samples.collect { |data| data['main']['temp_max']  }

  average = temps.reduce(:+) / temps.length

  puts average

end
