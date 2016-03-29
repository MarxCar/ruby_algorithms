#Name: Bubble Sort Algorithm
#Author: Sammy Hannat
#Description: Sorting algorithm in O(n^2)
def bubble_sort arr
  len = arr.count - 1
	
  loop do
    swapped = false
    len.times do |i|
      if arr[i] > arr[i+1]
      	arr[i], arr[i+1] = arr[i+1], arr[i]
      	swapped = true
      end
    end
  break unless swapped
  end
  
  return arr
end

array = [90, 80, 99, 1001, 890]
puts bubble_sort array
