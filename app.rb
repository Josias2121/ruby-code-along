require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :index
  end
  
  post '/' do
    @user = { 
      profilepic: "#{params["propic"]}",
      username: "#{params["username"]}",
      email: "#{params["email"]}",
      password: "#{params["password"]}",
      }
  erb :dashboard
  end
    
end
