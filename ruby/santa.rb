class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."

    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end

end

# DRIVER CODE
mortimer = Santa.new("male", "n/a")
mortimer.eat_milk_and_cookies("Oatmeal")

genders = ["Female", "Male", "Androgynous", "Non-binary", "Spirit", "Other"]
ethnicities = ["Jawa", "Wookiee", "Rodian", "Hutt", "Gamorrean", "Twi’lek", "Yuzzum", "Ewok", "Sullustan", "Geonosian"]

starwars_santas = []

# Populate starwars_santas with up to 30 santas
rand(30).times do |santa|
  starwars_santas << Santa.new(genders[rand(genders.length)], ethnicities[rand(ethnicities.length)])
end

# Print out starwars_santas
starwars_santas.each do |santa|
  puts "A #{santa.gender} #{santa.ethnicity} was born."
end