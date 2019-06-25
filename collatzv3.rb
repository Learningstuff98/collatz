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

collatz(7)
