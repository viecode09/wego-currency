namespace :currency do
	desc 'Checking Currency Daily Basis'
  task check_daily: :environment do
    Rate.save_data
  end

  desc "Pings PING_URL to keep a dyno alive"
  task :dyno_ping do
    require "net/http"
    uri = URI(ENV['PING_URL'] || "http://wego-currency.herokuapp.com/")
    Net::HTTP.get_response(uri)
  end
end