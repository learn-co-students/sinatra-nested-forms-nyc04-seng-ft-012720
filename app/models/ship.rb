class Ship

   attr_accessor :name, :type, :booty

   SHIPS = []

   def initialize(args)
       @name = args[:name]
       @type = args[:type]
       @booty = args[:booty]
       SHIPS << self
   end
   def self.all
       SHIPS
   end
   def self.clear
      SHIPS.clear
   end

end

# 1. Create two classes, a `Pirate` class and a `Ship` class. Pirates should have a name, weight, and height. You will also need a class method that returns all the pirates. The ship class should have name, type, and booty attributes, as well as a class method `.all` that returns all the ships and a class method `.clear` that deletes all ships.