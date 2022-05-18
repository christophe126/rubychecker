namespace :sample do
  desc "Saying Hello"
  task test: :environment do
    puts 'hi cron :)'
  end

end
