require 'rack-flash'
class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  
  configure do
    #use Rack::Flash
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end
end