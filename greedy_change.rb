#Name: Greedy Algorithm for calculating change
#Author: Sammy Hannat


def greedy_change(money)
	coins = {"quarter" => 25, "dime" => 10, "nickel" => 5, "penny" => 1}
	change = {"quarter" => 0, "penny" => 0, "dime" => 0, "nickel" => 0}
	money *= 100 # in pennies
	until money <= 0
		biggest_coin = 1
		coins.each do |x,y|
			if y < money && y > biggest_coin
				biggest_coin = y

			end
		end
		 
		change[coins.key(biggest_coin)] += 1
		money -= biggest_coin
	end
	return change
end

puts greedy_change(5)



