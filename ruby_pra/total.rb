def total(from, to)
  result = 0
  from.upto(to) do |num|
    p result
    if block_given?
      tmp = result
      result += yield(num)
      p '***'
      p (result - tmp)
    else
      result += num
    end
  end
  return result
end

p total(1, 10)
p '---'
p total(1, 10){|num| num ** 2}
