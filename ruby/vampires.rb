puts "Welcome to Werewolf Inc."

puts "What is your name?"
employee_name = gets.chomp.downcase

puts "How old are you?" 
employee_age = gets.chomp.to_i

puts "What year were you born?"
employee_birthyear = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
employee_wants_garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
employee_wants_health_insurance = gets.chomp

vampire_evaluation = nil
wrong_age = false

# Did the employee give the correct age (Does birth year and the given age line up?)
# If so: “Probably not a vampire.”
if employee_birthyear == 2017 - employee_age
  vampire_evaluation = "Probably not a vampire."
else 
  wrong_age = true
end

# Did the employee give the wrong age, turn down garlic bread, _OR_ waive health insurance?
# If so: “Probably a vampire.”


# Did the employee give the wrong age, turn down garlic bread, _AND_ waive health insurance?
# If so: "Almost certainly a vampire.”

# Is the employee's name "Drake Cula" _OR_ “Tu Fang”?
# If so: "Definitely a vampire"

# Otherwise:
# "Results inconclusive"