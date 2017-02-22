require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
  @a = params[:name]
    @a.reverse
  end
  get '/square/:number' do

    "Result: #{params[:number].to_i * params[:number].to_i}"
  end
  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times do str += "#{params[:phrase]}\n" end
      str
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
       "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract"
      "#{params[:number2].to_i - params[:number1].to_i}"
    elsif params[:operation] == "multiply"
      "#{params[:number2].to_i * params[:number1].to_i}"

    else
       "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end


end
