def binary_search(arr, value, low=0, high=arr.length-1)
	while low <= high
		mid = ((low + high) / 2).floor
		if arr[mid] > value
			high = mid - 1
		elsif arr[mid] < value
			low = mid + 1
		elsif arr[mid] == value
			return mid
		end
	end
	return nil
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
puts binary_search(arr, 4)