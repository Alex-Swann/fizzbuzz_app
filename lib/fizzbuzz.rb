def fizzbuzz(number)
	if number.is_a? Integer
		if number.between?(1, 100)
			if number % 3 == 0
				if number % 5 == 0
					return 'fizzbuzz'
				else
					return 'fizz'
				end
			elsif number % 5 == 0
				return 'buzz'
			else
				return number.to_s
			end
		else
			return "Integer outside of range. Try again!"
		end
	else
		return "Fail! Not an integer"
	end

end