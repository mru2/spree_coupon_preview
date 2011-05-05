Rails.application.routes.draw do
  # Add your extension routes here
  match '/cart/try_coupon/:coupon_code', :to => 'orders#get_total_with_coupon', :via => :get 
  
end
