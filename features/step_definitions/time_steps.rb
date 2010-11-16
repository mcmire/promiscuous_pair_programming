Given /^(?:today is|the time is) $time$/ do |time|
  # Will this be a utc date or..?
  Timecop.freeze Time.zone.parse(time)
end

When '$time pass' do |time|
  Timecop.travel future_time(time)
  Given 'delayed jobs are run'  # we use delayed jobs and have some that get scheduled in the future.
end

When 'time stands still' do
  Timecop.freeze Time.zone.now
end