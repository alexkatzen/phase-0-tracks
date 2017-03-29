puts "How many employees are we evaluating today?"
number_of_employees = gets.chomp.to_i

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
    vampire_evaluation = "almost certainly a vampire."
  end

  # Is the employee's name "Drake Cula" _OR_ “Tu Fang”?
  # If so: "Definitely a vampire"
  if employee_name.downcase == "drake cula" || employee_name.downcase == "tu fang"
    vampire_evaluation = "definitely a vampire."
  end


  # Use a loop to ask the employee to name allergies 1 at a time. 
  # If at any point the employee lists "sunshine" as an allergy, 
  # skip directly to vampire_evaluation = "Probably a vampire". 
  # When the employee types 'done', exit the loop.
  puts "Do you have any allergies (y/n?)"
  take_allergy_survey = gets.chomp.downcase

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

number_of_employees.times do 
  vampire_survey
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
