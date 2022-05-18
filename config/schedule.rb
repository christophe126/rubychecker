# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
set :output, "config/cron_log.log"

# every 1.minute, at: '22:29 am' do
  # runner "SearchVersion.check_new_version_ruby"

  # runner "SearchVersion.check_new_version_ruby"
every 1.minute do
  rake 'sample:test'
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
