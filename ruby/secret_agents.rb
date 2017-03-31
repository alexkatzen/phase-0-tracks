def encrypt(string)
  encrypted = ""
  counter = 0
  while counter < string.length 
    if string[counter] != "z" && string[counter] != " "
      encrypted += string[counter].next
      counter += 1
    elsif string[counter] == "z"
      encrypted += "a"
      counter += 1
    elsif string[counter] == " "
      encrypted += " "
      counter += 1
    end
  end
  return encrypted
end

puts encrypt("abdcdefghijklmnopqrstuvwxy  z")
