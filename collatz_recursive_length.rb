def collatz(num, length = 1)
  if num == 1
    length
  else
    if num.even?
      num /= 2
      length += 1
    else
      num = (num * 3) + 1
      length += 1
    end
    collatz(num, length)
  end
end

puts collatz(7)
