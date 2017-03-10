#get statement 
puts "Enter a value :" #output Enter a value : to console
val = gets #wait when you enter value to console
puts val #output entered  to console
#File 
aFile = File.new("input.txt", "r+")
# if aFile
#    aFile.syswrite("ABCDEF")
# else
#    puts "Unable to open file!"
# end
aFile = File.new("input.txt", "r+")
if aFile
  puts "FILE EXIST"
  aFile.syswrite("ABCDEF")
  aFile.each_byte {|ch| putc ch; putc ?. }
else
   puts "Unable to open file!"
end