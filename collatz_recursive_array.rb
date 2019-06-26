def collatz(num, sequence = [num])
  if num == 1
    sequence
  else
    if num.even?
      num /= 2
      sequence.push(num)
    else
      num = (num * 3) + 1
      sequence.push(num)
    end
    collatz(num, sequence)
  end
end

def seq_lengths(num)
  seq_lengths_arr = []
  i = 1
  while i <= num
    seq_lengths_arr.push(collatz(i).length)
    i += 1
  end
  seq_lengths_arr
end
  
def longest_seq(lengths)
  largest = lengths[0]
  seed_num = 0
  lengths.each.with_index(1) do |length, index|
    if largest <= length
      largest = length
      seed_num = index
    end
  end
  seed_num
end
  
input2 = seq_lengths(1_000_000)
puts longest_seq(input2)
