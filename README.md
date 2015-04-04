# RandomVariateGenerator

Is a random number generator for random variate occurs.

You can generate random values from following distributions:

    * Bernoulli
    * Geometric
    * Binomial
    * Negative Binomial
    * Exponential
    * Poisson
    * Triangular
    * Normal
    * Empirical
    * Uniform (Discrete and Continuos)

## Installation

Add this line to your application's Gemfile:

    gem 'random_variate_generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install random_variate_generator

## Usage

Add this in order to require funtionalities:

    `gem 'random_variate_generator'`

You have two ways of generate random numbers.

### Simple way (Examples)

  * `RandomVariateGenerator::Random.exponential(lambda: 0.5)`
  * `RandomVariateGenerator::Random.normal(mu: 0.5, sigma: 3)`
  * `RandomVariateGenerator::Random.uniform(min: 0.5, max: 2)`
  * `RandomVariateGenerator::Random.triangular(min: 0.5, mode: 1, max: 2)`
  * `RandomVariateGenerator::Random.uniform_discrete(min: 0, max: 20)`
  * `RandomVariateGenerator::Random.bernoulli(probability_of_success: 0.2)`
  * `RandomVariateGenerator::Random.binomial(probability_of_success: 0.2, number_of_trials: 3)`
  * `RandomVariateGenerator::Random.negative_binomial(probability_of_success: 0.2, number_of_success: 2)`
  * `RandomVariateGenerator::Random.geometric(probability_of_success: 0.2)`
  * `RandomVariateGenerator::Random.poisson(lambda: 3)`
  * `RandomVariateGenerator::Random.empirical(probabilities: [0.1, 0.3, 0.6])`

### Formal way (Examples)

With the formal way, you have to declare the random variate and then generate
the value with the method `generate_value`

```ruby
require 'random_variate_generator'

exp = RandomVariateGenerator::ExponentialVariate.new(lambda: 3)
exp2 = RandomVariateGenerator::RandomVariate.create("exponential", lambda: 3)
nor = RandomVariateGenerator::RandomVariate.create("normal", mu: -10, sigma: 2)
unif = RandomVariateGenerator::UniformVariate.new(min: -3, max: 10)
tri = RandomVariateGenerator::TriangularVariate.new(min: 1, mode: 10, max: 15)
bin = RandomVariateGenerator::BinomialVariate.new(probability_of_success: 0.3, number_of_trials: 5)
bin_neg =  RandomVariateGenerator::NegativeBinomialVariate.new(probability_of_success: 0.3, number_of_success: 2
bern = RandomVariateGenerator::BernoulliVariate.new (probability_of_success: 0.3)
poi =  RandomVariateGenerator::PoissonVariate.new(lambda: 3)
empirical = RandomVariateGenerator::EmpiricalVariate.new(probabilities: [0.1, 0.3, 0.6])
geo =  RandomVariateGenerator::GeometricVariate.new(probability_of_success: 0.3)

open("generated_values.txt","w"){|f|
  20000.times{
    vals = [
      exp.generate_value,
      exp2.generate_value,
      nor.generate_value,
      unif.generate_value,
      tri.generate_value,
      bin.generate_value,
      bin_neg.generate_value,
      bern.generate_value,
      poi.generate_value,
      empirical.generate_value,
      geo.generate_value]  
    f.puts vals.collect{|x| x.to_s}.join ", "
  }  
}      
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/random_variate_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
