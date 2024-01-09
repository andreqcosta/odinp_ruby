def stock_picker(array)
  biggest = 0
  days = []
  array.each_with_index do |num1, index1|
    array[index1 + 1..-1].each_with_index do |num2, index2|
      if num2 - num1 > biggest
        days = [index1, index2 + index1 + 1]
        biggest = num2 - num1
      end
    end
  end
  days.to_s
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
