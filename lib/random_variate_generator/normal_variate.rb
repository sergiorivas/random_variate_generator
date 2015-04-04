module RandomVariateGenerator

  class NormalVariate <  RandomVariate
    def initialize(params = {})
       if params[:mu] && params[:sigma]
         @mu = params[:mu] 
         @sigma = params[:sigma]
       else
         raise InvalidParameterException.new  "Parameter :mu or :sigma no specified"
       end
       raise InvalidParameterException.new "Parameter :sigma must be greater than 0" if @sigma <= 0
    end       

    def generate_value
      Random.normal(:mu => @mu, :sigma => @sigma)
    end
  end
  
end