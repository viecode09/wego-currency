if ENV["REDISCLOUD_URL"]
   Redis.current = Redis.new(:url => ENV["REDISCLOUD_URL"])
else
	Redis.current = Redis.new(YAML.load_file("#{Rails.root}/config/redis.yml")["config"])
end