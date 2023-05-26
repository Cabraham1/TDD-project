class Solver
  def factorial(num)
    raise ArgumentError, 'negative number are not allowed' if num.negative?

    if [0, 1].include?(num)
      1
    else
      num * factorial(num - 1)
    end
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(int)
    if (int % 3).zero? && (int % 5).zero?
      'fizzbuzz'
    elsif (int % 3).zero?
      'fizz'
    elsif (int % 5).zero?
      'buzz'
    else
      int.to_s
    end
  end
end
