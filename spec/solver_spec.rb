require_relative '../solver'
require 'rspec'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#factorial' do
    it 'should return the factorial of a number' do
      expect(@solver.factorial(4)).to eq(24)
    end

    it 'should accept special case 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'should accept when the number is positive' do
      expect { @solver.factorial(1) }.not_to raise_error(ArgumentError)
    end

    it 'should raise an exception when the number is negative' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'should return the string reversed' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'should return "fizz" when int is divisible by 3' do
      expect(@solver.fizzbuzz(12)).to eq('fizz')
    end

    it 'should return "buzz" when int is divisible by 5' do
      expect(@solver.fizzbuzz(20)).to eq('buzz')
    end

    it 'should return "fizzbuzz" when int is divisble by 3 and 5' do
      expect(@solver.fizzbuzz(60)).to eq('fizzbuzz')
    end

    it 'should return the integer as a string when not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
