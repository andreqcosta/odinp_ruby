def bubble_sort(array)
  limit = array.length - 2
  while limit >= 0
    for i in 0..limit
      if array[i] > array[i + 1]
        aux = array[i]
        array[i] = array[i + 1]
        array[i + 1] = aux
      end
    end
    limit -= 1
  end
  array.to_s
end
puts bubble_sort([4,3,78,2,0,2])
puts bubble_sort([4,3,78,2,0,2,1,5423,6,8,9,3,63,43,8,11,93])

