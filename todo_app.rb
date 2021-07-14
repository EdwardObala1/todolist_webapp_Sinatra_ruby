require 'sinatra'
require 'HTML'

get '/'  do
  erb :'Landing.html'
end