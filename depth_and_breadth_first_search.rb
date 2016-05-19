class Array
	def median
		self[self.length/2]
	end
end

class Node
	attr_accessor :left, :right
	attr_reader :val

	def initialize value
		@val = value
	end
end

def check node, val
	return node if node.val == val
end

def build_tree arr,tree
	unless arr.length <= 1
		current = Node.new(arr.median)
		puts "Median is #{current.val}"
		mid = arr.length/2
		tree << current
		current.left = build_tree arr[0,mid], tree
		current.right = build_tree arr[mid, arr.length], tree
		return current.val
	else
		arr.delete(arr[0])
		return arr[0]
	end
end

build_tree [1,2,3,4,5,6,7,8, 9], tree=Array.new


def breadth_first_search node, value
	return check(node, value)
	if check(node.left, value)
		return node.left
	elsif check(node.right, value)
		return node.right
	
	else

		breadth_first_search node.left, value
		breadth_first_search node.right, value
	end

end
puts breadth_first_search(tree[0], 2)