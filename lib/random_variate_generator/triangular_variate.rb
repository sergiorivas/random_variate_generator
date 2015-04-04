module RandomVariateGenerator

  class TriangularVariate <  RandomVariate
    def initialize(params = {})
       if params[:min] && params[:mode] && params[:max]
         @min = params[:min] 
         @mode = params[:mode]
         @max = params[:max]   
       else
         raise InvalidParameterException.new "Parameter :min, :mode or :max no specified"
       end 
       raise InvalidParameterException.new "Parameter :max must be greater than :mode" if @mode >= @max
       raise InvalidParameterException.new "Parameter :max must be greater than :min" if @min >= @max
       raise InvalidParameterException.new "Parameter :mode must be greater than :min" if @min >= @mode             
    end       
    
    def generate_value
      Random.triangular(:min => @min, :mode => @mode, :max => @max)
    end
  end

end