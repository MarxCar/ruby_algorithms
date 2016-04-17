
def euclid_gcd m, n
	r = m % n
	return n if r == 0
	m, n = n, r
	return euclid_gcd m, n
end

puts euclid_gcd 18, 24