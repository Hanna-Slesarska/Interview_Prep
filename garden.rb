=begin
Creating a new garden with 10 plants
Garden with 10 plants and 0 flowers
Adding flowers...
Garden with 10 plants and 15 flowers
Watering the plants...
Garden with 10 plants, 15 flowers, and plants watered
Pruning the plants...
Garden with 10 plants, 15 flowers, and plants pruned
Removing 5 plants from the garden
Garden with 5 plants, 15 flowers, and plants pruned
=end

class Garden
    attr_accessor :plants, :flowers, :plants_watered, :plants_pruned
    
    def initialize(plants)
      @plants = plants
      @flowers = 0
      @plants_watered = false
      @plants_pruned = false
    end
  
    def add_flowers(count)
      @flowers += count
    end
  
    def plants_status
      if @plants_watered 
        return "plants watered"
      else "plants not watered"
      end
    end
  
    def pruning_status
      if @plants_pruned 
        return "plants pruned "
      else "plants not pruned "
      end
    end
    def water_plants
      @plants_watered = true
    end
  
    def prune_plants
      @plants_pruned = true
    end
    def to_string
      if @plants_watered && @plants_pruned
        "Garden with #{@plants} plants, #{@flowers} flowers, and #{plants_status}, #{pruning_status}"
      elsif @plants_watered
        "Garden with #{@plants} plants, #{@flowers} flowers, and #{plants_status}"
      elsif @plants_pruned
        "Garden with #{@plants} plants, #{@flowers} flowers, and #{pruning_status}"
      else
        "Garden with #{@plants} plants and #{@flowers} flowers"
      end
    end
   
  
    def self.cultivate(plants, flowers, remove_count)
      garden = Garden.new(plants)
      puts "Creating a new garden with #{plants} plants "
      puts garden.to_string
      puts "Adding flowers..."
      garden.add_flowers(15)
      puts garden.to_string
      puts "Watering the plants..."
      garden.water_plants
      puts garden.to_string
  
      puts "Pruning the plants..."
      garden.prune_plants
      puts garden.to_string
  
      puts "Removing #{remove_count} plants from the garden"
      garden.plants -= remove_count
      puts garden.to_string
  
      garden
    end
  end