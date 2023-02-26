class ApplicationController < ActionController::Base
 def blank_square_form


  render({:template => "calculation_templates/square_form.html.erb" })
  end
def calculate_square
  #Parameters: {"elephant"=>"42"}
  @num = params.fetch("number").to_f
  @square_of_num = @num ** 2
   render({:template => "calculation_templates/square_results.html.erb"})
end
def blank_square_root_form


  render({:template => "calculation_templates/square_root_form.html.erb" })
  end
def calculate_square_root
  #Parameters: {"elephant"=>"42"}
  @num = params.fetch("user_number").to_f
  @square_root_of_num = Math.sqrt(@num)
   render({:template => "calculation_templates/square_root_results.html.erb"})
end
def blank_calculate_random

  render({:template => "calculation_templates/rand_new.html.erb" })
  end
def calculate_random
  #Parameters: {"elephant"=>"42"}
  @lower = params.fetch("user_min").to_f
  @upper = params.fetch("user_max").to_f

  @result = rand(@lower..@upper)
   render({:template => "calculation_templates/rand_results.html.erb"})
end
def blank_calculate_payment

  render({:template => "calculation_templates/payment_new.html.erb" })
  end
def calculate_payment
  #Parameters: {"elephant"=>"42"}
  @apr = params.fetch("user_apr").to_s
  #to_s(:percentage, { :precision => 4 } ) 
  #@ap= @apr(:percentage, { :precision => 4 })
  @no_of_years = params.fetch("user_years").to_i
  @principal = params.fetch("user_pv").to_f
  
  @numerator = ((@apr/12)*(@principal))
  @denominator = 1- (1/((1+(@apr/12))**(@no_of_years*12)))
  @payment = @numerator/@denominator
   render({:template => "calculation_templates/payment_results.html.erb"})
end

end
