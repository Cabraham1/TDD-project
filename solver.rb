class Solver
  def factorial(num)
    raise ArgumentError, 'negative number are not allowed' if num.negative?

    if [0, 1].include?(num)
      1
    else
      num * factorial(num - 1)
    end
  end
end