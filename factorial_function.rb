# In mathematics, the factorial of a non-negative integer n, denoted by n!, is the product of all positive integers less than or equal to n. 
# 5! = 5 X 4 X 3 X 2 X 1 = 120
# The value of 0! is 1, according to the convention for an empty product.

class FactorialAlgorithm

	def factorial_statement(number)
		statement = number.downto(1).to_a.join(" X ")
	end

	def factorial(number)
		number.downto(1).inject(:*)
	end

end