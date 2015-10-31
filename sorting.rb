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

# Custom sorting method

def alphabetize(arr, rev=false)
  if rev
    arr.reverse!
  else
    arr.sort!
  end
end

numbers = [1,5,7,8,3092,184,192,119,205,192,22,339,10,88,55,44,433]

puts alphabetize(numbers, rev=true)