def status_message 
  puts "This is the default message!"
  yield("Rakey", "Alex")
end

status_message { |name1, name2| puts "#{name1} and #{name2} are working on this!!!" }

