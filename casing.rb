# simple movie hash example to show casing

movies = {
    the_shining: 92,
    transformers: 59,
    gravity: 90,
    the_matrix: 91,
    interstellar: 82
}
puts "Please choose one of the following:"
choice = gets.chomp

case choice
  when "add"
    puts "Enter a movie title:"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Enter a rating:"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "Movie already added."
    end
  when "update"
    puts "Enter a movie title:"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Error: movie not present."
    else
      puts "Enter a new rating:"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each do |movie,rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Enter a movie title:"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Error: movie not present."
    else
      movies.delete(title)
    end
  else
    puts "Error: invalid option selected."
end