require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction


    def initialize(discount=0)
# on initialize, total = 0
        @total = 0
 
# optional employee discount 
# default argument for CashRegister class = 0
# if customer is employee, then use discount argument
        @discount = discount
        @items = []
    end

#add_item accepts a title and a price and increases the total
#add_item requires the arguments 'title' and 'price'
#add_item allows optional quantity, optional means default value needed
    def add_item(product, price, quantity=1)
# binding.pry
        self.total = @total + price * quantity

# push items * quantity
        quantity.times do
            @items << product
        end
        self.last_transaction = price * quantity
        
# binding.pry
    end


    def apply_discount
# binding.pry
#   @total = 1000, @discount = 20
    @total = @total- (@total * (@discount / 100.to_f))
# binding.pry
# discount returns message
    
        if @discount > 0
        # binding.pry
        return "After the discount, the total comes to $#{@total.to_i}."
        
        else
# if no discount "There is no discount to apply."
        return "There is no discount to apply."

        end

    end

# items returns an array containing all items that have been added 

    def items
        return @items

    end

    def void_last_transaction
        # binding.pry
        self.total = @total - last_transaction
    end


end

cash = CashRegister.new(100)

cash