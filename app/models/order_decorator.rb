Order.class_eval do
  
  # This method tries a coupon code on an order.
  # It returns a hash with the following values
  # valid : true or false (if the coupon is valid for this order)
  # amount : the n
  
  def try_coupon_code(code)
    # Get the former total
    @total = self.total

    # Assign the coupon to the order
    self.coupon_code = code
    @promotion_credit = self.process_coupon_code
    
    # If the code is valid
    if @promotion_credit  
      
      # Get the new total
      @new_total = @total + @promotion_credit.amount
      @valid = true
      
      # Destroy the promotion
      @promotion_credit.destroy      
      
    # If the code is not valid
    else
      # Get the old total
      @new_total = @total
      @valid = false
    end
    
    # Set back the coupon to nil
    self.coupon_code = ""
    self.process_coupon_code
    
    # Return the new amount
    return {:valid => @valid, :amount => @new_total}
    
  end
  
end  
  