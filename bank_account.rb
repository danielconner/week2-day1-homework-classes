# def get_account_name(account)
#   return account[:holder_name]
# end

class BankAccount
  attr_accessor :type, :amount, :holder_name

  #:type is a method, not a variable(cannot be changed after creation)

  def initialize(input_holder_name, input_amount, input_type)
    @holder_name = input_holder_name
    @amount = input_amount
    @type = input_type
  end
  #@type is a variable so therefore can be changed throughout

  def direct_debit()
    @amount -= 50 if @type == "personal"
    @amount -= 100 if @type == "business"
  end

  def deposit(amount)
    self.amount += amount
  end
 #self is the same as the @amount in this occasion
end
