require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  message = ""
spicy_foods.each do |key|
 message = puts "#{key[:name]} (#{key[:cuisine]}) | Heat Level: #{key[:heat_level]} " 
end
message
end

def get_names(spicy_foods)
list_of_food = spicy_foods.map do |key|
 key[:name]
  end
  list_of_food
end

def spiciest_foods(spicy_foods)
result = spicy_foods.select do |key|
  key[:heat_level] > 5
  end
  result
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
spicy_foods.find do |key|
  if key[:cuisine] == cuisine
    return key
  end
end
end

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest_foods(spicy_foods))
end

def average_heat_level(spicy_foods)
heat = spicy_foods.map do |k|
  k[:heat_level]
end
heat.sum(0.0) / heat.size
end

# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
