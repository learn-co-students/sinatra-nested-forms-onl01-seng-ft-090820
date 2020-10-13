class Pirate
    attr_reader :name, :weight, :height, :ships
    @@all = []

    def initialize(pirate)
        @name = pirate[:name]
        @weight = pirate[:weight]
        @height = pirate[:height]
        @ships = []
        pirate[:ships].each do |s|
            ship = Ship.new(s)
            @ships << ship 
        end
        @@all << self
    end

    def self.all
        @@all
    end

end