def collatz(num, array = [num])
  if num == 1
    array
  else
    if num.even?
      num /= 2
      array.push(num)
    else
      num = (num * 3) + 1
      array.push(num)
    end
    collatz(num, array)
  end
end

puts collatz(6).inspect
