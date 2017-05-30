# run all specs when ./app/** changes
listener = Listen.to('./app') do |modified, added, removed|
  puts Time.now
  system "./bin/rake test"
end
listener.start

# run single specs when ./test/** changes
listener = Listen.to('./test') do |modified, added, removed|
  puts Time.now
  (modified + added).each do |file|
    system "./bin/rake test TEST=#{file}"
  end
end

listener.start

sleep
