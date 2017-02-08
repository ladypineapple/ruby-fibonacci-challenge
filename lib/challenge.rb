# frozen_string_literal: true

#

class FibonacciRange
  include Enumerable

  def each
    current_fib = start
    while current_fib <= stop
      yield current_fib
      current_fib + previous_fib = next_fib
    end
  end

  attr_reader :start, :stop, :step
  private :start, :stop, :step
  def initialize(start, stop, step)
    @start = start
    @stop = stop
    @step = step
  end
end

class FibonacciNumber
end
