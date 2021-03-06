require 'pry'

class Owner
attr_accessor :name, :pets
attr_reader :species
@@all = []

def initialize(name)
@@all << self
@pets = {
  :fishes => [],
  :dogs => [],
  :cats => []
}
end

def species
species = "human"
end

def say_species
  "I am a #{species}."
end

def buy_fish(name)
  fish = Fish.new(name)
pets[:fishes] << fish
end

def buy_cat(name)
  cat = Cat.new(name)
pets[:cats] << cat
end

def buy_dog(name)
  dog = Dog.new(name)
pets[:dogs] << dog
end

def walk_dogs
pets[:dogs].each {|dog| dog.mood = "happy"}
end

def play_with_cats
  pets[:cats].each {|cat| cat.mood = "happy"}
end

def feed_fish
  pets[:fishes].each {|fish| fish.mood = "happy"}
end

def self.reset_all
  @@all.clear
end

def sell_pets
pets.each do |species, animals|
animals.each do |pet|
pet.mood = "nervous"
end
animals.clear
end
end

def list_pets
 "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end

def self.all
@@all
end

def self.count
@@all.count
end

end
