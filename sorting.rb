# Sort in alphabetical order

fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |first, second|
  first <=> second
end

# Sort reverse alphabetical order

fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |first, second|
  second <=> first
end