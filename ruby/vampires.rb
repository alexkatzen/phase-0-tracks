puts "How many employees are we evaluating today?"
number_of_employees = gets.chomp.to_i

# Create a function for the survey
def vampire_survey 
  vampire_evaluation = "[results inconclusive]"
  wrong_age = false

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

  # Did the employee give the correct age (Does birth year and the given age line up?)
  if employee_birthyear != 2017 - employee_age
    wrong_age = true
  else 
    vampire_evaluation = "probably not a vampire."
  end

  # Did the employee give the wrong age, turn down garlic bread, _OR_ waive health insurance?
  if (wrong_age && employee_wants_garlic == "n") || employee_wants_health_insurance == "n"
    vampire_evaluation = "probably a vampire."
  end

  # Did the employee give the wrong age, turn down garlic bread, _AND_ waive health insurance?
  if wrong_age && employee_wants_garlic == "n" && employee_wants_health_insurance == "n"
    vampire_evaluation = "almost certainly a vampire."
  end

  # Is the employee's name "Drake Cula" _OR_ “Tu Fang”?
  if employee_name.downcase == "drake cula" || employee_name.downcase == "tu fang"
    vampire_evaluation = "definitely a vampire."
  end

  # Ask if the employee has allergies.
  puts "Do you have any allergies (y/n?)"
  take_allergy_survey = gets.chomp.downcase

  # If employee indicates allergies, ask the employee to list allergies 1 at a time. If 'sunshine' entered, skip directly "probably a vampire" evaluation
  if take_allergy_survey == "y"
    puts "Please provide your allergies. Hit \'Enter\' after each allergy and type \'done\' when finished."
  end
  while take_allergy_survey == "y"
    puts "My allergy is:"
    allergy = gets.chomp.downcase
    if allergy == "sunshine"
      vampire_evaluation = "probably a vampire."
      take_allergy_survey = nil
      puts "Sunshine?! Thanks, that's all we need to know. This concludes the allergies portion of the survey."
    end 
    if allergy == 'done'
      take_allergy_survey = nil
    end
  end

  puts "Evaluation: #{employee_name} is " + vampire_evaluation

end

# Conduct the survey for each of the employees
while number_of_employees > 0
  vampire_survey
  number_of_employees -= 1
end

puts ""
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."