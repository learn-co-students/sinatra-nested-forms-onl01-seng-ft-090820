class Pirate
    attr_accessor :name, :height, :weight

    def initialize(params)
        @name = params[:name]
        @height = params[:height]
        @weight = params[:weight]
    end
    
end