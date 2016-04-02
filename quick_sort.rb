#Name: Quick Sort Algorithm
#Author: Sammy Hannat
#Description: Sorting algorithm in O(n log(n)); one of the quickest sorting algorithms
def partition(arr, left, right)
	pivot = arr[left]
	right_area = left
	(left+1).upto(right) do |i|
		if arr[i] <= pivot
			right_area += 1
			arr[right_area], arr[i] = arr[i], arr[right_area]
		end
	end
	arr[left], arr[right_area] = arr[right_area], arr[left]
	return right_area
end

def quick_sort(arr, left=0, right=arr.count-1)
	if left >= right
		return arr
	end
	mid = partition(arr, left, right)
	quick_sort(arr, left, mid - 1)
	quick_sort(arr, left+1, right)
end

array = [90, 890,80, 99, 1001]
puts quick_sort array