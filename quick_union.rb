#Name: Quick Union Algorithm
#Author: Sammy Hannat
#Description:

def root arr, id
	root_val = arr[id]
	if root_val == id
		return id
	else
		return root arr, root_val
	end
end

def union arr, f_id, l_id
	f_root, l_root = root(arr, f_id), root(arr, l_id)
	arr[f_root] = l_root 
	
end

def find arr, f_id, l_id
	return root(arr, f_id) == root(arr, l_id)
end

arr = [*0..9]
union arr, 1, 4
puts arr

