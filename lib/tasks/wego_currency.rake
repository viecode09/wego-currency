namespace :currency do
	desc 'Checking Currency Daily Basis'
  task check_daily: :environment do
    Rate.save_data
  end
end