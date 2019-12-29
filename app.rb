require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    blank = ''
    params[:number].to_i.times do 
      blank += params[:phrase]
  end

end
