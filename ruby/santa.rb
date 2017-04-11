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

  # get the gender
  def gender
    @gender
  end

  # get the ethnicity
  def ethnicity
    @ethnicity
  end

  #get age
  def age
    @age
  end

  # get the current reindeer ranking
  def reindeer_ranking
    @reindeer_ranking
  end

  # age the santa by one year
  def celebrate_birthday
    @age+= 1
  end

  # get mad at a reindeer
  def get_mad_at=(reindeer_name)
    i = @reindeer_ranking.index(reindeer_name)
    @reindeer_ranking.push(reindeer_ranking[i])
    @reindeer_ranking.delete_at(i)
  end

  # set the gender
  def set_gender=(gender)
    @gender = gender
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

# age mortimer by 3 years
p mortimer.age
mortimer.celebrate_birthday
mortimer.celebrate_birthday
mortimer.celebrate_birthday
p mortimer.age

# get mad at Vixen
p mortimer.reindeer_ranking
mortimer.get_mad_at=("Vixen")
p mortimer.reindeer_ranking

# set the gender
p mortimer.gender
mortimer.set_gender=("Androgynous")
p mortimer.gender

# get age and ethnicity
p mortimer.age
p mortimer.ethnicity
