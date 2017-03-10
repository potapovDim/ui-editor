puts "Hello, Ruby!";
#array 
arr = ["1", 10 , 11, "string222"]
#hash
color = {"1"=> "#000000", "2"=> "#AAAAAAA"}
#range 
test_range = (1..100)
#class
class Test
  @@test_class_variable="test ruby variable"
  def hello()
    puts @@test_class_variable
  end
end


test1 = Test. new

test1.hello

color.each do |key, value|
  print "key -" ,key, "+", "value-", value, "\n"
end

arr.each do |i|
  puts i
end