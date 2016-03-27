#Name: Insertion sort algorithm
#Author: Sammy Hannat
#Description: Sorts array in Big O(n^2)

def insertion_sort(arr)
	len = arr.length-1
	for i in 0..len
		low = i
		for x in i+1..len
			low = x if arr[x] < arr[low]
		end
		arr[low] = arr[i..len].min
		arr[i], arr[low] = arr[low], arr[i]
	end
	return arr
end

array = [90, 80, 99, 1001, 890]
puts insertion_sort(array)