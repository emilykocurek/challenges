class Person 
  attr_reader :age, :name
  def initialize(name, age)
      @name = name
      @age = age
  end

end

ken = Person.new("Ken", 28)
marco = Person.new("Marco", 31)
erica = Person.new("Erica", 29)
cindy = Person.new("Cindy", 14)

people = [ken, marco, erica, cindy]

def sort_people(people, comparer)
  people.sort do |x, y|
    comparer.call(x) <=> comparer.call(y) #can also do name here 
  end
end

#grab_age = lambda do |person|
#  person.age
#end

#grab_name  = lambda do |person| #grab_name variable
#  person.name
#end 

#sorted_people = sort_people(people, grab_name) 

sorted_people = sort_people(people, lambda { |person| person.age})

puts sorted_people.inspect

#numbers = [1,5,8,1,-2,4,99,23,-66]
#sorted_numbers = numbers.sort
#puts sorted_numbers.inspect

#anonymous functions are lambda's without a name 