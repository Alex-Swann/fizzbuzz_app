def fizzbuzz(number)
  return number.to_s if number != 3 && number != 5
	number == 5 ? 'buzz' : 'fizz'
end
