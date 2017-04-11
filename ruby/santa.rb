class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."

    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age

  attr_writer

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  # age the santa by one year
  def celebrate_birthday
    @age+= 1
  end

  # set the order of the reindeer ranking
  def get_mad_at=(reindeer_name)
    i = @reindeer_ranking.index(reindeer_name)
    @reindeer_ranking.push(reindeer_ranking[i])
    @reindeer_ranking.delete_at(i)
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
mortimer.gender=("Androgynous")
p mortimer.gender

# get age and ethnicity
p mortimer.age
p mortimer.ethnicity


# build many, many santas
example_genders = ["agender", "androgyne", "female", "Gender Questioning","Intersex", "Two-Spirit", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "east-asian", "persian", "indian", "pacific-islander", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

for i in 0..rand(1000)
  i = Santa.new(example_genders[rand(genders.length)], example_ethnicities[rand(ethnicities.length)])
  i.age= rand(140)
  puts "You created a #{i.ethnicity} Santa who is #{i.age} years old and #{i.gender}."
end