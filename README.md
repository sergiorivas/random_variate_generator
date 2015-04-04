# RandomVariateGenerator

Is a random number generator random variate based.

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
  * `RandomVariateGenerator::Random.bernoulli(:probability_of_success => 0.2)`
  * `RandomVariateGenerator::Random.binomial(:probability_of_success => 0.2, :number_of_trials => 3)`
  * `RandomVariateGenerator::Random.negative_binomial(:probability_of_success => 0.2, :number_of_success => 2)`
  * `RandomVariateGenerator::Random.geometric(:probability_of_success => 0.2)`
  * `RandomVariateGenerator::Random.poisson(:lambda => 3)`
  * `RandomVariateGenerator::Random.empirical(:probabilities => [0.1, 0.3, 0.6])`

### Formal way (Examples)

## Contributing

1. Fork it ( http://github.com/<my-github-username>/random_variate_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
