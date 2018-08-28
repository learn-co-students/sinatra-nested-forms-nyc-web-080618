require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end # home route

    get '/new' do
      erb :"pirates/new"
    end # new route

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_details|
        Ship.new(ship_details)
      end

      @ships = Ship.all

      erb :"pirates/show"
    end # post pirates form handler

  end
end
