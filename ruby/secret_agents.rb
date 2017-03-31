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

puts encrypt("abcdefghijklmnopqrstuvwxyz  z")


def decrypt(string)
  decrypted = ""
  counter = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  
  while counter < string.length
    
    letter = string[counter]
    
    # if the letter is not an 'a' or ' '
    if letter != "a" && letter != " "

      # find the index position of the new, encrypted letter.
      new_letter_index = alphabet.index(letter)-1
      
      # add the encrypted letter using the new index position
      decrypted += alphabet[new_letter_index]
      counter += 1
    
    elsif string[counter] == "a"
      decrypted += "z"
      counter += 1
    elsif string[counter] == " "
      decrypted += " "
      counter += 1
    end
  end
  return decrypted
end

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
puts decrypt("d e v b o o t c a m p")

# The below code works because it is decrypting the result of the encrypting method.
puts decrypt(encrypt("swordfish"))
