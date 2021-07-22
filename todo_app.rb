require 'sinatra'
require 'HTML'



  
# configure do
#   set :public_folder, 'public'
#   set :views, 'views'
#   enable :sessions
#   set :session_secret, "mysticaltasks"
# end

get '/'  do
  erb :'Landing.html'
end

get "/Signup" do
  erb :"Signup.html"
end

get "/Signin" do
  erb :"Signin.html"
end
