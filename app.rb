require "sinatra"

get '/' do
  @count = params[:item]
  @count = 0 if @count == nil
  erb :index
end

get '/count' do
  @count = params[:c].to_i + 1
  redirect "/?item=#{@count}"
end
