puts "How many employees are we evaluating today?"
number_of_employees = gets.chomp.to_i

def vampire_evaluation 
  puts "Welcome to Werewolf Inc."
  puts ""
  puts "What is your name?"
  employee_name = gets.chomp

  puts "How old are you?" 
  employee_age = gets.chomp.to_i

  puts "What year were you born?"
  employee_birthyear = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n?)"
  employee_wants_garlic = gets.chomp.downcase

  puts "Would you like to enroll in the company’s health insurance? (y/n?)"
  employee_wants_health_insurance = gets.chomp.downcase

  vampire_evaluation = "(Results inconclusive)"
  wrong_age = false

  # Did the employee give the correct age (Does birth year and the given age line up?)
  # If so: “Probably not a vampire.”
  if employee_birthyear == 2017 - employee_age
    vampire_evaluation = "probably not a vampire."
  else 
    wrong_age = true
  end

  # Did the employee give the wrong age, turn down garlic bread, _OR_ waive health insurance?
  # If so: “Probably a vampire.”
  if (wrong_age && employee_wants_garlic == "n") || employee_wants_health_insurance == "n"
    vampire_evaluation = "probably a vampire."
  end

  # Did the employee give the wrong age, turn down garlic bread, _AND_ waive health insurance?
  # If so: "Almost certainly a vampire.”
  if wrong_age && employee_wants_garlic == "n" && employee_wants_health_insurance == "n"
    vampire_evaluation = "plmost certainly a vampire."
  end

  # Is the employee's name "Drake Cula" _OR_ “Tu Fang”?
  # If so: "Definitely a vampire"
  if employee_name.downcase == "drake cula" || employee_name.downcase == "tu fang"
    vampire_evaluation = "definitely a vampire."
  end

  puts "Evaluation: #{employee_name} is " + vampire_evaluation
end

number_of_employees.times do 
  vampire_evaluation
end
