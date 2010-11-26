Before do
  # Freeze time so dates set in the future never expire
  Timecop.freeze Time.zone.local(2010, 1, 1)
end

After do
  Timecop.return
end