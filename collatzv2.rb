def collatz_length(num)
  length = 1
  while num != 1
    length += 1
    if num.even?
      num = num / 2
    else
      num = (num * 3) + 1
    end
  end
  length
end

def seq_lengths(num)
  seq_lengths_arr = []
  i = 1
  while i <= num
    seq_lengths_arr.push(collatz_length(i))
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

def assert_equal(actual, expected)
  if actual == expected
    puts 'Passed'
  else
    puts "Failed. Expected #{expected} but got #{actual}."
  end
end

assert_equal(longest_seq(seq_lengths(1)), 1)
assert_equal(longest_seq(seq_lengths(2)), 2)
assert_equal(longest_seq(seq_lengths(3)), 3)
assert_equal(longest_seq(seq_lengths(4)), 3)
assert_equal(longest_seq(seq_lengths(5)), 3)
assert_equal(longest_seq(seq_lengths(6)), 6)
assert_equal(longest_seq(seq_lengths(7)), 7)

# input2 = seq_lengths(1000000)
# puts longest_seq(input2)

# require 'benchmark'
# num = 1000000
# Benchmark.bm do |x|
#   x.report('collatz_length') { collatz_length(num) }
# end

# require 'benchmark'
# input2 = seq_lengths(1000000)
# Benchmark.bm do |x|
#   x.report('longest_seq') { longest_seq(input2) }
# end
