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
    
    # keep track of the letter to be encrypted
    letter = string[counter]
    
    # if the letter is not an 'a' or ' '
    if letter != "a" && letter != " "

      # find the index position of the new, encrypted letter within the alphabet.
      new_letter_index = alphabet.index(letter)-1
      
      # add the encrypted letter using the new index position
      decrypted += alphabet[new_letter_index]
      counter += 1
    
    # encrypt with a 'z' if the letter to be encrypted is an 'a'
    elsif letter == "a"
      decrypted += "z"
      counter += 1
    
    # leave spaces alone
    elsif letter == " "
      decrypted += letter
      counter += 1
    end
  end
  return decrypted
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")
# puts decrypt("d e v b o o t c a m p")

# The below code works because it is decrypting the result of the encrypting method.
# puts decrypt(encrypt("swordfish"))
