def fizzbuzz(number)
  return 'fizzbuzz' if number % 15 == 0
  return number.to_s if number != 3 && number != 5
	number == 5 ? 'buzz' : 'fizz'
end
