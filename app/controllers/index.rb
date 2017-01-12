get '/' do
  erb :index
end

post '/' do
  # binding.pry
  @dice = Dice.new(params[:dice][:size])
  erb :'index'
end
