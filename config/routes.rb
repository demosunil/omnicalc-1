Rails.application.routes.draw do
get("/square/new",{:controller => "application",:action => "blank_square_form"})
get("/square/results",{:controller => "application",:action => "calculate_square"})
get("/square_root/new",{:controller => "application",:action => "blank_square_root_form"})
get("/square_root/results",{:controller => "application",:action => "calculate_square_root"})
get("/random/new",{:controller => "application", :action => "blank_calculate_random"})
get("/random/results",{:controller => "application", :action => "calculate_random"})
get("/payment/new",{:controller => "application", :action => "blank_calculate_payment"})
get("/payment/results",{:controller => "application", :action => "calculate_payment"})

end
