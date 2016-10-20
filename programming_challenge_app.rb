require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'fizzbuzz_function.rb'
require_relative 'factorial_function.rb'
require_relative 'fibonacci_function.rb'

enable :sessions

get '/' do
	@title = "FizzBuzz"
	erb :home_page
end

get '/fizzbuzz' do
	erb :fizzbuzz 
end

post '/fizzbuzz' do
	erb :fizzbuzz
	number = params[:fizzbuzz_number].to_i
	session[:fizzbuzz] = FizzBuzzAlgorithm.new

	if number <= 0 || number > 100
		erb :incorrect_fizzbuzz
	else
		erb :correct_fizzbuzz, :locals => { :number => number, :statement => session[:fizzbuzz].fizzbuzz_statement(number) }
	end
end

get '/factorial' do
	erb :factorial
end

post '/factorial' do
	erb :factorial
	number = params[:factorial_number].to_i
	session[:factorial] = FactorialAlgorithm.new

	if number < 0
		erb :negative_factorial, :locals => { :number => number }
	elsif number == 0
		erb :zero_factorial, :locals => { :number => number, :statement => session[:factorial].factorial_statement(number), :factorial => session[:factorial].factorial(number) }
	else	
		erb :positive_factorial, :locals => { :number => number, :statement => session[:factorial].factorial_statement(number), :factorial => session[:factorial].factorial(number) }
	end
end

get '/fibonacci' do
	erb :fibonacci
end

post '/fibonacci' do
	erb :fibonacci
end