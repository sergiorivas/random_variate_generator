module RandomVariateGenerator

  class BinomialVariate <  RandomVariate
    def initialize(params = {})
       if params[:probability_of_success]
         @probability_of_success = params[:probability_of_success] 
       else
         raise InvalidParameterException.new "Parameter :probability_of_success no specified"
       end
       raise InvalidParameterException.new "Parameter :probability_of_success must be greater than 0" if @probability_of_success <= 0
       if params[:number_of_trials]
         @number_of_trials = params[:number_of_trials] 
       else
         raise InvalidParameterException.new "Parameter :number_of_trials no specified"
       end
       raise InvalidParameterException.new "Parameter :number_of_trials must be greater than 0" if @number_of_trials <= 0
    end       
    
    def generate_value
      Random.binomial(:probability_of_success => @probability_of_success,
                                :number_of_trials => @number_of_trials)
    end
  end

end