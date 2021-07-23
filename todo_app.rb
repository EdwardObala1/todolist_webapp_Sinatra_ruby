require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/task'
require_relative './models/user'

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

post "/Signup" do
  if params[:email] == "" || params[:password] == ""
    redirect '/signup'
  else
    @user = User.create(:email => params[:email], :password => params[:password])
    redirect '/Signin'
  end
end

get "/Signin" do
  erb :"Signin.html"
end

post "/Signin" do
  @email = params['email']
  check_user =  User.where(email: params['email'], password: params['password'])
  Task.create(email: params['email'])
  if check_user
    redirect '/Todopage'
  else
    redirect '/Signin'
  end
end

get "/Todopage" do
  erb :"Todopage.html"
end

post "/Todopage" do
  if Task.where(email: @email)
    Task.create(:tasks_todo => params['task'])
  end
  redirect '/Todopage'
end

def show_date
  respond_to do |format|
    format.html # showdate.html.erb
    format.json { render :json => @tasks }
  end
end 