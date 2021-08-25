require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    forwards_name = params[:name]
    backwards_name = forwards_name.reverse
    backwards_name
  end

  get '/square/:number' do
    number_to_square = params[:number].to_i
    square = number_to_square * number_to_square
    "#{square}"
  end

  get '/say/:number/:phrase' do
    number_of_repeats = params[:number].to_i
    phrase_to_repeat = params[:phrase]
    repeats = []
    number_of_repeats.times do
    # params[:number].to_i.times do
    #  puts "#{phrase_to_repeat}"
    #  "#{phrase_to_repeat}"
      # binding.pry
      repeats << phrase_to_repeat
    end
    "#{repeats.join(' ')}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case operation
    when "add"
      "#{number1 + number2}"
    when "subtract"
      "#{number1 - number2}"
    when "multiply"
      "#{number1 * number2}"
    when "divide"
      "#{number1 / number2}"
    else
      404
    end
  end

end