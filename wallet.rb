# checkout
class Wallet

  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def show_amount
    puts "$#{@amount}.00"
  end
end