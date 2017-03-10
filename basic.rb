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

#paralel assignment 
z, x, c = 10, 20, 30

#instance of class
test1 = Test. new
#call instance class method
test1.hello

color.each do |key, value|
  print "key -" ,key, "+", "value-", value, "\n"
end

arr.each do |i|
  puts i
end

# cosntant defined in main object
MR_COUNT = 0
# module
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1 #set global MR_COUNT to 1
  MR_COUNT = 2 #set local MR_COUNT to 2
end

print MR_COUNT
print "--------------------"
print Foo::MR_COUNT,"\n"
#get warning
#---------------------------------------------------------- LOOPS
print "#---------------------------------------------------------- LOOPS \n"
#else if loop
some_const = 10
if some_const < 10
  print "We are in if case \n"
else
  print "We are in else case \n"
end
#unless construnction revers to if
unless some_const > 11
    puts "const less than condition"
  else
    puts "Condition is trully"
end

#if condition after expression
print "some_const is 10" if some_const
print "some_const is 10, but unless call this if condition wrang" unless some_const > 11
#empty lines
print "\n"
print "\n"
print "\n"
#end empty lines
#case expression
$age = 10 
case $age 
  when 0..5
    puts "0-5 years old"
  when 5..10
    puts "5-10 years old"
  when 10..15
    puts "10-15 year old"
  else
    puts "more then 15 years old"
end
#empty line
print "\n"
#while loop
$enum = 10
$iterator = 0
while $iterator < $enum
  puts("Inside while loop iterator = #$iterator")
  $iterator +=1
end
$iterator = 0
#empty line
print "\n"
#while modifier
begin
  puts("Inside while modifier loop iterator = #$iterator")
  $iterator +=1
end while $iterator < $enum
#empty line
print "\n"
#until loop - revers to while execudet while condition in wrang (falsy)
$iterator = 0
until $iterator > $enum
  puts("Inside until loop iterator = #$iterator")
  $iterator +=1
end
#empty line
print "\n"
#the same until modifier
$iterator = 0
begin
  puts("Inside until modifier loop iterator = #$iterator")
  $iterator +=1
end until $iterator > $enum
#empty line
print "\n"

#break statement 
puts "+++++++++++++++++++++++++++++++++++++++ \n"
for i in  0..5
  if i > 2 then
    break
  end #if in if get false puts work !
  puts "value of local variable is #{i}"
end
#next statement
puts "+++++++++++++++++++++++++++++++++++++++ \n"
for i in 0..5
   if i < 2 then
      next 
   end #if in if get false puts work
   puts "Value of local variable is #{i}"
end
#next statement
puts "+++++++++++++++++++++++++++++++++++++++ \n"
#redo statement
# for i in 0..5
#   if i < 2 then
#     puts "Local variable is #{i}"
#     redo # get while true!!!!!
#   end
# end
#retry statement
puts "+++++++++++++++++++++++++++++++++++++++ \n"

# for a in 1..5
#    retry if  a > 2
#    puts "Value of local variable is #{a}"
# end

#---------------------------------------------------------- METHODS
print "#---------------------------------------------------------- METHODS \n"
def print_args(var1 ="default var 1", var2 = "default var 2") #default values initialization
  puts "Var 1 === #{var1} value "
  puts "Var 2 === #{var2} value "
end

print_args 1,2 # can call print_args(1,2)

puts "+++++++++++++++++++++++++++++++++++++++ \n"

def test
   i = 100
   j = 10
   k = 0
end

$new_local_variable = test #default return last value in method
print "NEW LOCAL VARIABLE IS #{$new_local_variable} \n" # new_local_variable in 0

#method with different length of arguments
def method_of_diff_lenght_args(*args)
  print "-----=======--------========------ method_of_diff_lenght_args!"
  puts "Argument length in method_of_diff_lenght_args  is = #{args.length}"
  for i in 0..args.length - 1 #args in array 
    puts "The parametr are #{args[i]}"
  end
end

method_of_diff_lenght_args "First", "_@!", "z"
method_of_diff_lenght_args "First", "_@!", "123", 2313

#---------------------------------------------------------- BLOCKS
# Block constist of chunks of code
# Assign block name
# Code of block is in { } 
# Block invoke from function with the same name by operator 'yield'

#example yield statement
puts "+++++++++++++++++++++++++++++++++++++++ \n"
def test_block1
  puts "In method !"
  yield
  puts "in method second iteration"
  yield
end
test_block1 {
  block_variable = "test_block variable" 
  puts "this is block 'test_block1' variable = #{block_variable}"
}

#block can get args 
puts "+++++++++++++++++++++++++++++++++++++++ \n"
def test_block1
  puts "In method !"
  yield "arg 1"
  puts "in method second iteration"
  yield "arg 2"
end
test_block1 {
  |internal_variable|
  block_variable = "test_block variable" 
  puts "this is block 'test_block1' variable = #{block_variable} , and internal_variable #{internal_variable}"
}
# also work with argument 
# def test_block
#   puts "call method puts "
#   yield 1, 2 - two pass variablen in block statement
# end
# test_block {
#   |a, b| - initialization variable
#   puts "var 1 =  #{a} , var 2  #{b}"
# }
#__________________________________________
# block and methods 
puts "+++++++++++++++++++++++++++++++++++++++ \n"
def test_block2(&block)
  block.call
end
test_block2 {
  puts "test block 2 ---------"
}
# BEGIN and END statement
puts "+++++++++++++++++++++++++++++++++++++++ \n"
BEGIN {
  #begin block code called at the top of this file , look at top of console log
  puts "BEGIN BLOCK CODE - - - - "
}
END {
  #end block code
  puts "END BLOCK CODE - - - - "
}

puts "MAIN BLOCK CODE - - - - "
#iterators 
arr = [1, 2, 3, 4, 5, 6]
arr.each do |i|
  puts i
end


a = [1,2,3,4,5]
b = a.collect{|x| 10*x}
puts b
