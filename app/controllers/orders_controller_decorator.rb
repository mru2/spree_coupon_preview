OrdersController.class_eval do

  # Get the total amount for the current order, assuming the coupon code in param (:coupon_code)
  def get_total_with_coupon

    # Get the order and the code
    @order = current_order
    @code = params[:coupon_code]

    # This method returns a hash : valid (true or false), and amount (the new total)    
    render :text => @order.try_coupon_code(@code).to_json
    
  end
  
end