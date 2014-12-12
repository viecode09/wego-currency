if Rails.production?
  uri = URI.parse("redis://rediscloud:m8EzKCcQEdBsNAMj@pub-redis-19586.us-east-1-2.2.ec2.garantiadata.com:19586")
  Redis.current = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
else
	Redis.current = Redis.new(YAML.load_file("#{Rails.root}/config/redis.yml")["config"])
end