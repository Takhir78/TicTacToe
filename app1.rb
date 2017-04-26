require "sinatra"
# require_relative "board.rb"
# require_relative "console.rb"
# require_relative "human_console.rb"
# require_relative "game.rb"

get'/' do

	erb :test
	
end

post '/players' do

	player_1=params[:player_1]
	player_2=params[:player_2]
"player1 is '#{player_1}' & player2 is '#{player_2}'"

end

get '/test' do
	"this is just a test"
end
