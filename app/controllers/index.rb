get '/' do
  erb :index
end

post '/roll' do
  dice = Dice.new(params[:dice][:size].to_i)
  @dice = dice.roll
  erb :index
end
