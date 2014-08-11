require 'sinatra'

get '/reverse' do
  haml :reverse
end
post '/reverse' do
  @text = "Reversed is '#{params[:text].reverse}'"
  haml :reverse
end
