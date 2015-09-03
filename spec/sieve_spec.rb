require 'rspec'
require_relative '../sieve.rb'

describe "Sieve receives" do
  context "input 10" do
    it "should give all prime numbers between 2 and 10" do
      primes = solve(10)
      expect(primes).to eq [2, 3, 5, 7]
    end
  end
  context "input 2" do
    it "should give 2" do
      primes = solve(2)
      expect(primes).to eq [2]
    end
  end
end
