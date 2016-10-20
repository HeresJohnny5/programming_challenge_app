require_relative 'fizzbuzz_function.rb'
require 'minitest/autorun'

class TestFizzBuzz < Minitest::Test

	def test_fizzbuzz_1_returns_number_1
		number = 1
		code_challenge = FizzBuzzAlgorithm.new
		assert_equal("#{number} = #{number}", code_challenge.fizzbuzz_statement(number))
	end

	def test_fizzbuzz_2_returns_number_2
		number = 2
		code_challenge = FizzBuzzAlgorithm.new
		assert_equal("#{number} = #{number}", code_challenge.fizzbuzz_statement(number))
	end

	def test_fizzbuzz_3_returns_string_Fizz
		number = 3
		code_challenge = FizzBuzzAlgorithm.new
		assert_equal("#{number} = Fizz", code_challenge.fizzbuzz_statement(number))
	end

	def test_fizzbuzz_4_returns_number_4
		number = 4
		code_challenge = FizzBuzzAlgorithm.new
		assert_equal("#{number} = #{number}", code_challenge.fizzbuzz_statement(number))
	end

	def test_fizzbuzz_5_returns_string_Buzz
		number = 5
		code_challenge = FizzBuzzAlgorithm.new
		assert_equal("#{number} = Buzz", code_challenge.fizzbuzz_statement(number))
	end

	def test_fizzbuzz_6_returns_string_Fizz
		number = 6
		code_challenge = FizzBuzzAlgorithm.new
		assert_equal("#{number} = Fizz", code_challenge.fizzbuzz_statement(number))
	end

	def test_fizzbuzz_15_returns_string_FizzBuzz
		number = 15
		code_challenge = FizzBuzzAlgorithm.new
		assert_equal("#{number} = FizzBuzz", code_challenge.fizzbuzz_statement(number))
	end

	def test_fizzbuzz_30_returns_string_FizzBuzz
		number = 30
		code_challenge = FizzBuzzAlgorithm.new
		assert_equal("#{number} = FizzBuzz", code_challenge.fizzbuzz_statement(number))
	end

end