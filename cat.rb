

class Cat
  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed      
  end

  def output_cat
    puts "#{@name} is a #{@breed} cat"
  end

end

cat = Cat.new(:sassy, :siamese)
cat.output_cat 
