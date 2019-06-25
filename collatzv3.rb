def collatz(num, array = [])
  if num == 1
    num
  else
    if num.even?
      num /= 2
      array.push(num)
      puts num
    else
      num = (num * 3) + 1
      array.push(num)
      puts num
    end
    collatz(num, array)
  end
end

collatz(7)
