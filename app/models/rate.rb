class Rate
	include Redis::Objects

	def self.stream_data
		HTTParty.get("http://www.wego.co.id/hotel/carebear/exchange-rates.json").parsed_response["rates"] rescue nil
	end

	def self.save_data
		@rates = Redis::HashKey.new('rates')
		stream_data.each do |k,v|
			@rates[k] = v
		end
		return @rates.all
	end

	def self.get_data id=nil
		id.nil? ? redis.hgetall("rates") : redis.hgetall("rates")[id.upcase]
	end
end