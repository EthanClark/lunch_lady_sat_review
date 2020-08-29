
# holding the code
class Dessert

  attr_accessor :user, :wallet, :plate

  def initialize(user, wallet, plate)
    @user = user
    @wallet = wallet
    @plate = plate
    @desserts_arr = [{name: "brownie", price: 2}, {name: 'ice cream', price: 10}]
    # @plate.show_plate
    choose_dessert(@desserts_arr)
  end
  
  def choose_dessert(type_of_dish)
    puts "What dish would you like, #{@user.name}?"
    type_of_dish.each_with_index do |dish, index|
      puts "#{index + 1}) #{dish[:name]} $#{dish[:price]}.00"
    end
    dessert_choice = gets.strip.to_i - 1
    
    @plate.add_item_to_plate(@desserts_arr[dessert_choice][:name])
    @wallet.subtract_from_amount(@desserts_arr[dessert_choice][:price])
    # @plate.show_plate
    
  end
  
end