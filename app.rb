require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    # code for view files (new, show, and root)

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end
    
  end
end
