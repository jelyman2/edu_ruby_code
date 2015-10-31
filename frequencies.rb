puts 'Please provide some textual input:'
text = gets.chomp
words = text.split(' ')
frequencies = Hash.new(0)
words.each do |w|
  frequencies[w] += 1
end
frequencies = frequencies.sort_by do |f, count|
  count
end
frequencies.reverse!
frequencies.each do |w,c|
  puts "#{w} #{c}"
end