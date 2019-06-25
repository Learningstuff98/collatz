def collatz(num)
  if num == 1
    num
  else
    if num.even?
      num /= 2
      puts num
    else
      num = (num * 3) + 1
      puts num
    end
    collatz(num)
  end
end

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

def is_array(array)
  puts array.inspect
end

puts is_array(collatz(1000000))
