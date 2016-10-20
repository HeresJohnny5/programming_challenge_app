class FizzBuzzAlgorithm

	def fizzbuzz_statement(number)
		if number % 3 == 0 && number % 5 == 0
			"#{number} = FizzBuzz"
		elsif number % 3 == 0
			"#{number} = Fizz"
		elsif number % 5 == 0
			"#{number} = Buzz"
		else
			"#{number} = #{number}"
		end
	end

end