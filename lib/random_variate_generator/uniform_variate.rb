module RandomVariateGenerator

  class UniformVariate <  RandomVariate
    def initialize(params = {})
       if params[:min] && params[:max]
         @min = params[:min] 
         @max = params[:max]
       else
         raise InvalidParameterException.new "Parameter :min or :max no specified"
       end
       raise InvalidParameterException.new "Parameter :max must be greater than :min" if @min >= @max
    end       
    
    def generate_value
      Random.uniform(:min => @min,:max => @max)
    end
  end

end