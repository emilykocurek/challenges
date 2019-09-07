class Animal #class of animal - building a class for an Animal 
  def eat 
    puts "nom nom nom"
  end
end

class Dog < Animal #specific animal - class of dog which is animal so same eaating behavior 
  def bark 
    puts "woof"
  end 
end 


class Cat < Animal
  def meow
    puts "meow"
  end
end

class Duck < Animal
  def quack
    puts "quack!"
  end
end 

class GoldenRetriever < Dog 
  def fetch
    puts "running and getting it"
  end
end

class Poodle < Dog
end

animal = Animal.new #build a generic animal class 
dog    = Dog.new #calls specific animal dog
cat    = Cat.new #calls specific animal cat
duck   = Duck.new
gr     = GoldenRetriever.new
p      = Poodle.new

puts dog.is_a?(GoldenRetriever)

#animal.eat #trigger eating functionality 
#dog.bark #dog can eat (from animal) and bark 
#dog.eat #trigger dog eating functionality 
#cat.meow #a dog can eat (from animal) and meow
#cat.eat #trigger cat eating functionality
#duck.eat
#duck.quack
#gr.eat
#gr.bark
#gr.fetch
#p.eat
#p.bark