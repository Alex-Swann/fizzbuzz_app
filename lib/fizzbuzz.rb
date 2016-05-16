def fizzbuzz(number)
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


	# return 'fizzbuzz' if number % 5 == 0 && number % 3 == 0 && number % 15 == 0
	# return 'fizz' if number % 3 == 0
	# return 'buzz' if number % 5 == 0
	# return number.to_s if number != 3 && number != 5

end

