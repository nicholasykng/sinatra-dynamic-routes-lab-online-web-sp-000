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
    @blank = ''
    params[:number].to_i.times do
      @blank += params[:phrase]
    end
    @blank
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @combo = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    "#{@combo}"
  end

end
