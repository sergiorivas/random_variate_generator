module RandomVariateGenerator

  class ExponentialVariate <  RandomVariate
    def initialize(params = {})
       if params[:lambda]
         @lambda = params[:lambda] 
       else
         raise InvalidParameterException.new "Parameter :lambda no specified"
       end
       raise InvalidParameterException.new "Parameter :lambda must be greater than 0" if @lambda <= 0
    end       
    
    def generate_value
      Random.exponential(:lambda => @lambda)
    end
  end
  
end