(function($) {

  // DOM Elements monitored
  var couponCodeInput = 'input#order_coupon_code';
  var tryCouponCodeOutput = '#total_with_coupon';

  // Try a coupon and return the result
  function tryCoupon() {
    $(couponCodeInput).addClass('loading');
    var couponCode = $(couponCodeInput).val();
    
    if (couponCode == ""){
      $(tryCouponCodeOutput).html("Please enter a coupon code");
      $(couponCodeInput).removeClass('loading');
    }
    else
    {
      $.getJSON('/cart/try_coupon/'+couponCode, function(data){
        if (data.valid){
          $(tryCouponCodeOutput).html('Total after coupon : $'+data.amount);
        }
        else{
          $(tryCouponCodeOutput).html('Coupon unvalid');        
        }
        $(couponCodeInput).removeClass('loading');
      });
    }
  }

  
  // Main hook
  $(function() {
        
    // Binds the coupon trying to the input field (on focus out)
    $(couponCodeInput).blur(function(){
      tryCoupon();
      return false;
    });
    
  });
   
   
})(jQuery);

