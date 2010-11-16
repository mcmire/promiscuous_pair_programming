Before do
  #puts "BEFORE TIMECOP"
  #puts "Time.now: #{Time.now.inspect}"
  #puts "Time.utc(2010, 1, 1): #{Time.utc(2010, 1, 1).inspect}"
  #puts "Time.local(2010, 1, 1): #{Time.local(2010, 1, 1).inspect}"
  #puts "Time.zone.now: #{Time.zone.now.inspect}"
  #puts "Time.utc(2010, 1, 1).in_time_zone: #{Time.utc(2010, 1, 1).in_time_zone.inspect}"
  #puts "Time.zone.local(2010, 1, 1): #{Time.zone.local(2010, 1, 1).inspect}"
  
  # Freeze time so dates set in the future never expire
  Timecop.freeze Time.utc(2010, 1, 1)
  
  #puts "AFTER TIMECOP"
  #puts "Time.now: #{Time.now.inspect}"
  #puts "Time.utc(2010, 1, 1): #{Time.utc(2010, 1, 1).inspect}"
  #puts "Time.local(2010, 1, 1): #{Time.local(2010, 1, 1).inspect}"
  #puts "Time.zone.now: #{Time.zone.now.inspect}"
  #puts "Time.utc(2010, 1, 1).in_time_zone: #{Time.utc(2010, 1, 1).in_time_zone.inspect}"
  #puts "Time.zone.local(2010, 1, 1): #{Time.zone.local(2010, 1, 1).inspect}"
end

After do
  Timecop.return
end