
class Plate
  # attr_accessor :new_item

  def initialize
    @plate = []
    # @plate <<  @new_item
    # puts "Your plate #{@plate}"
  end
  
  def add_item_to_plate(new_item)
    @plate << new_item
    show_plate
  end

  def show_plate
    map_dishes(@plate)
  end
  
  
  def map_dishes(type_of_dish)
    puts "Your Plate so far:"
      type_of_dish.each_with_index do |dish, index|
        puts "#{index + 1}) #{dish}"
      end
    end

  # possibly hold two variables
  # 1 for items
  # 2nd cost - checkout total 

end