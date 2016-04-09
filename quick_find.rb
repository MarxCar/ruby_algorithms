#Name: Quick-Find
#Author: Sammy Hannat	
#Description: Algorithm designed to connect edges between 
#nodes and quickly find if two nodes are connected together
#Takes O(n^2) for union 


def connected arr, f_id, l_id
	return arr[f_id] == arr[l_id]
end
def union arr, f_id, l_id
	f_val = arr[f_id]
	l_val = arr[l_id]
	0.upto arr.length do |i|
		arr[i] = l_val if arr[i] == f_val
	end
end


arr = [0,1,2,3,4,5]
union arr, 1, 4
puts arr