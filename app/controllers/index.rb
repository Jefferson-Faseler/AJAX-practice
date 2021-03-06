get '/' do
  erb :index
end

post '/roll' do

@total1 = 0
@total2 = 0
@total3 = 0

params[:dice][:number][:first].to_i.times do
  dice = Dice.new(params[:dice][:size][:first].to_i)
  @total1 = dice.roll + @total1
end

params[:dice][:number][:second].to_i.times do
  dice = Dice.new(params[:dice][:size][:second].to_i)
  @total2 = dice.roll + @total2
end

params[:dice][:number][:third].to_i.times do
  dice = Dice.new(params[:dice][:size][:third].to_i)
  @total3 = dice.roll + @total3
end

if request.xhr?
  status 200
  if @total1 > 1 || @total2 > 1 || @total3 > 1
    erb :'/_partial', layout: false, locals: {total1: @total1, total2: @total2, total3: @total3}
  else
    status 422
  end
else
  erb :index
end
end
