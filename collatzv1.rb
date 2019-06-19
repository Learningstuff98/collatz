def collatz(num)
  sequence = [num]
  return sequence if num == 1
  while num != 1
    if num.even?
      num = num / 2
      sequence.push(num)
    else
      num = (num * 3) + 1
      sequence.push(num)
    end
  end
  sequence
end

def seq_lengths(num) # Use the collect method as seen in lesson 12.
  seq_lengths_arr = []
  i = 1
  while i <= num
    seq_lengths_arr.push(collatz(i).length)
    i += 1
  end
  seq_lengths_arr
end

def longest_seq(array)
  largest = array[0]
  input = 0
  array.each_with_index do |number, index|
    if largest <= number
      largest = number
      input = index + 1
    end
  end
  input
end

input2 = seq_lengths(1000000)
puts longest_seq(input2)

# require 'benchmark'
# num = 1000000
# Benchmark.bm do |x|
#   x.report('collatz') { collatz(num) }
# end

# require 'benchmark'
# input2 = seq_lengths(1000000)
# Benchmark.bm do |x|
#   x.report('longest_seq') { longest_seq(input2) }
# end

















# def assert_equal(actual, expected)
#   if actual == expected
#     puts 'Passed'
#   else
#     puts "Failed. Expected #{expected} but got #{actual}."
#   end
# end

# assert_equal(collatz(1), [1])
# assert_equal(collatz(2), [2, 1])
# assert_equal(collatz(3), [3, 10, 5, 16, 8, 4, 2, 1])
# assert_equal(collatz(4), [4, 2, 1])
# assert_equal(collatz(5), [5, 16, 8, 4, 2, 1])
# assert_equal(collatz(6), [6, 3, 10, 5, 16, 8, 4, 2, 1])
# assert_equal(collatz(7), [7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1])


