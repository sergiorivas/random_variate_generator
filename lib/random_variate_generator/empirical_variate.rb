module RandomVariateGenerator

  class EmpiricalVariate <  RandomVariate
    def initialize(params = {})
       if params[:probabilities]
         @probabilities = params[:probabilities] 
       else
         raise InvalidParameterException.new "Parameter :probabilities no specified"
       end
    end       
    
    def generate_value
      Random.empirical(:probabilities => @probabilities)
    end
  end
  
end