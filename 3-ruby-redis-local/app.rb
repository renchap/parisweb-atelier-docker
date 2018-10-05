require "sinatra"
require "sinatra/reloader"
require "redis"

set :bind, '0.0.0.0'

redis = Redis.new(host: "redis", port: 6379)

get "/" do
  @messages = redis.lrange("messages", 0, 100) || []
  erb :index
end

post "/messages" do
  redis.rpush("messages", params["message"])
  redirect to("/")
end
