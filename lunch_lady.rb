
require_relative 'wallet'
require_relative 'user'

class MainDish
  attr_accessor :name, :price

  def initialize(name, price) 
    @name = name
    @price = price
  end
end

class SideDish
   attr_accessor :name, :price

  def initialize(name, price) 
    @name = name
    @price = price
  end

end



class LunchLady

  def initialize
    @main_dishes = [MainDish.new("Apple", 2), MainDish.new("Life Changing Coffee", 500), MainDish.new("Pasta", 250)]
    @side_dishes = [SideDish.new("Grilled Veggies", 10), SideDish.new("Mashed Taters", 10), SideDish.new("Rocks", 1)]
    start_with_name
  end

  def start_with_name
    # first thing I want to do is get name
    puts "Hello, what is your name?"
    user_name = gets.strip
    @name = user_name
    # puts "Hello #{@name}, welcome to lunch."
    @user = User.new(@name)
    puts @user.name
    starting_money
  end
  
  def starting_money
    puts "How much money do you have?"
      wallet_amount = gets.strip.to_i
      @user_wallet = Wallet.new(wallet_amount)
      @user_wallet.show_amount
      print_menu
  end

  def print_menu
      puts "What do you want?"
        puts "1) Order Main Dish"
        puts "2) Order Side Dish"
        puts "3) See Total"
        puts "4) Checkout"
        puts "5) Exit"
        get_menu_choice
  end

    def get_menu_choice
      user_choice = gets.strip.to_i
      case user_choice
      when 1
        order_main
      when 2
        order_side
      when 3
        see_total
      when 4
        checkout
      when 5
        puts "CYA IDIOT"
        exit!
      else
        puts "That wasn't an option dummy, try again."
        print_menu
      end
    end

    def map_dishes(type_of_dish)
      puts "What dish would you like?"
      type_of_dish.each_with_index do |dish, index|
        puts "#{index + 1}) #{dish.name} $#{dish.price}.00"
      end
    end

      def order_main
        map_dishes(@main_dishes)
        user_choice = gets.strip.to_i
        puts @main_dishes[user_choice - 1].name
      end
      
      def order_side
        map_dishes(@side_dishes)
        user_choice = gets.strip.to_i
        puts @side_dishes[user_choice - 1].name
        
      end

      def see_total
      end

      def checkout
      end



end

start = LunchLady.new