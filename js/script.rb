#def add_numbers (num1, num2)
#    return num1 + num2
#end 

#def subtract_numbers(num1, num2)
#    return num1 - num2
#end

#add_numbers2 = lambda do |num1, num2|
#    return num1 + num2
#end

#subtract_numbers2 = lambda do |num1, num2|
#    return num1 - num2
#end

#puts add_numbers2.inspect

#puts subtract_numbers(3, 4) #regular method does not need call #just a method/function 
#puts subtract_numbers2.call(3, 4) #needs a call method to pass through the lambda #both a method and a variable

#You can't treat a method like a variable all the time -  Add_numbers2.inspect - will allow us to pass a lambda through a method 

#add_numbers = lambda do |num1, num2|
#    return num1 + num2
#end

#subtract_numbers = lambda do |num1, num2|
#    return num1 - num2
#end

#def combine(m, num1, num2)
#  return m.call(num1, num2)
#end

#puts combine(add_numbers, 3, 4)
#puts combine(subtract_numbers, 3, 4)

#answer 7 for add - #answer -1 for subtract 

