#Name: Merge Sort Algorithm
#Author: Sammy Hannat
#Description: Sorting algorithm in O(n log(n))

def merge(arr1, arr2)
	merged_arr = []
	until arr1.empty? or arr2.empty?
		if arr1.first <= arr2.first
			merged_arr << arr1.shift
		else
			merged_arr << arr2.shift
		end
	end
	return merged_arr.concat(arr1).concat(arr2)
end


def merge_sort arr
	len = arr.size
	return arr if len <= 1
	mid = len/2
	left = merge_sort(arr[0,mid])
	right = merge_sort(arr[mid,len])
	merged = merge left, right
	return merged

end

array = [90, 80, 99, 1001]
puts merge_sort(array)
