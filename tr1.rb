def prev_returner(*args)
  return 'a','b','c'
end
def returner
  return 1, prev_returner ,3
end

a, b, c = returner
puts 10!= 11