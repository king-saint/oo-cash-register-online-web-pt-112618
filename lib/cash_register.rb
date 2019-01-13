class CashRegister
  attr_accessor :total, :discount, :lastTransaction
  
  
    def initialize(discount=0)
      @discount = discount
      @total = 0
      @lastTransaction = 0
    end  
    
    def total
        @total
    end
    
    def add_item(title, price, quantity=nil)
      previous_total = @total
      @lastTransaction = price
      if quantity != nil
        new_price = quantity * price
          @total += new_price
      else
        @total += price
      end
      previous_total
    end
    
    def apply_discount
      new_price = 0
      
        if @discount > 0
          @discount = @total * (@discount * 0.01)
          @total = @total - @discount
          return "After the discount, the total comes to $#{@total.round}."
           @total = new_price - @discount
        else
          return "There is no discount to apply."
        end
       
    end
    
    def items
      
    end  
    
    def void_last_transaction
      @total = @total = @lastTransaction
    end
  
end
