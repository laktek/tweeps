require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'
require 'vendor/httparty/lib/httparty'

get '/' do
  erb :index
end

get '/question' do
  friends = HTTParty.get("http://twitter.com/statuses/friends/#{params[:name]}.json")
  @random_friend = friends.delete_at(rand(friends.length - 1)) || "Unkown (he is not revealing himself)"
  @answers = [friends.delete_at(rand(friends.length - 2))['description'], friends.delete_at(rand(friends.length - 3))['description'], @random_friend['description']].compact.shuffle!
  @correct_answer = @answers.index(@random_friend['description'])

  erb :question 
end

class Array
  def shuffle!
    size.downto(1) { |n| push delete_at(rand(n)) }
    self
  end
end
