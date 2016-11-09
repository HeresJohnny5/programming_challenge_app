# # The fibonacci numbers are the numbers in the following integer sequence, called the Fibonacci sequence, and characterized by the fact that every number in it is the sum of the two preceding ones.
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...

class FibonacciAlgorithm

	def fibonacci_sequence(number)
		a = 0
		b = 1

		number.times do 
			temp = a
			a = b
			b = temp + b
		end
		return a
	end

	def fibonacci_statement(number)
		statement = []

		1.upto(number) do |n|
			result = fibonacci_sequence(n)
			statement.push(result)
		end

		result = statement.join(", ")
	end

end