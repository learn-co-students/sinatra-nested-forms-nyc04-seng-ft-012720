require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'


module FormsLab
  class App < Sinatra::Base
      set :views, "./views/pirates/"
    # code other routes/actions here
      get '/' do
         "Welcome to the Nested Forms Lab!"
      end

      get '/new' do
   #      binding.pry
         erb :new
      end

      post '/pirates' do
   #      binding.pry
          hash1 = {}  
          hash1[:name] = params[:pirate][:name]
          hash1[:weight] = params[:pirate][:weight]
          hash1[:height] = params[:pirate][:height]
           @pirate = Pirate.new(hash1)
  #       binding.pry  
           params[:pirate][:ships].each do |details|
   #              binding.pry
                 Ship.new(details)
           end
           @ships = Ship.all
           erb :show
      end

  end
end




# 2. Make a nested form (this should probably have html `<label>`s so it makes sense to a user). This form will be creating three objects (one instance of the Pirate class, and two instances of the Ship class). Remember, you'll need to build a corresponding controller action to load this page. Your form should `POST` to the route `'/pirates'`.
