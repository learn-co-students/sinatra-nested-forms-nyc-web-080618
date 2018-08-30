require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new' #navigates in the view file directory
    end

 # here we are creating Pirates and Ships instances

   post '/pirates' do
       @pirates = Pirate.new(params[:pirate])
         params[:pirate][:ships].each do |ship|
          Ship.new(ship)
        end
         @ship = Ship.all
         erb :'pirates/show'
       end
    end
end
