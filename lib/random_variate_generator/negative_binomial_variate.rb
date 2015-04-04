module RandomVariateGenerator

  class NegativeBinomialVariate <  RandomVariate
    def initialize(params = {})
       if params[:probability_of_success]
         @probability_of_success = params[:probability_of_success] 
       else
         raise InvalidParameterException.new "Parameter :probability_of_success no specified"
       end
       raise InvalidParameterException.new "Parameter :probability_of_success must be greater than 0" if @probability_of_success <= 0
       if params[:number_of_success]
         @number_of_success = params[:number_of_success] 
       else
         raise InvalidParameterException.new "Parameter :number_of_success no specified"
       end
       raise InvalidParameterException.new "Parameter :number_of_success must be greater than 0" if @number_of_success <= 0
    end       
    
    def generate_value
      Random.negative_binomial(
        :probability_of_success => @probability_of_success,
        :number_of_success => @number_of_success)
    end
  end
  
end