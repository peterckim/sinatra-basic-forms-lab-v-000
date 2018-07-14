require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    
    erb :index
  end
  
  get '/create' do
    
    erb :create_puppy
  end
  
  post '/create' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end
end