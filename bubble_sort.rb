def bubble_sort(list)
  swap = false

  list.each_with_index do |value, index|
    unless index == list.count - 1
      if value > list[index + 1]
        list[index] = list[index + 1]
        list[index + 1] = value
        swap = true
      end
    end
  end

  bubble_sort(list) if swap
  list
end

p bubble_sort([4,3,78,2,0,2])

