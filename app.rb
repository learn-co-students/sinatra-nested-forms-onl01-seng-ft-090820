require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do 
      erb :'pirates/new'
    end

    post "/pirates" do 
      @new_pirate = Pirate.new(params["pirate"]["name"],params["pirate"]["weight"], params["pirate"]["height"])
      params["pirate"]["ships"].each do |ship_attr|
        Ship.new(ship_attr["name"], ship_attr["type"], ship_attr["booty"])
      end
      
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
