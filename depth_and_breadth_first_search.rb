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


def build_tree arr

end