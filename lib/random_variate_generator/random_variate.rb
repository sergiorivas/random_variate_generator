module RandomVariateGenerator

  class RandomVariate  
    
    def self.create(distribution_name, args = {})
      if distribution_name.to_s == "exponential"
        return ExponentialVariate.new args
      elsif distribution_name.to_s == "normal"
        return NormalVariate.new args
      elsif distribution_name.to_s == "uniform"
        return UniformVariate.new args
      elsif distribution_name.to_s == "triangular"
        return TriangularVariate.new args
      elsif distribution_name.to_s == "binomial"
        return BinomialVariate.new args
      elsif distribution_name.to_s == "geometric"
        return GeometricVariate.new args
      elsif distribution_name.to_s == "negative_binomial"
        return NegativeBinomialVariate.new args
      elsif distribution_name.to_s == "bernoulli"
        return BernoulliVariate.new args
      elsif distribution_name.to_s == "poisson"
        return PoissonVariate.new args
      elsif distribution_name.to_s == "empirical"
        return EmpiricalVariate.new args
      end                               
      raise InvalidParameterException.new  "Unknowed distribution"
    end
    
    def generate_value
      raise AbstractClassException
    end
    
    #private_class_method :new
    
  end

end