require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name].split('')
    @reversed_name = @name.reverse.join
    "#{@reversed_name}"
  end
  
  get '/square/:number' do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @num.times do
      @string += "#{@phrase}. "  
    end
    "#{@string}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
      when "add"
        @answer = @num1 + @num2
      when "subtract"
        @answer = @num1 - @num2
      when "multiply"
        @answer = @num1 * @num2
      when "divide"
        @answer = @num1 / @num2
    end
    "#{@answer}"
  end
  
end