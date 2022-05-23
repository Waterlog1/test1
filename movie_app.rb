movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
if movies[title.to_s].nil
  puts "What is your movie title?"
  title= gets.chomp
else
  puts "The #{movie} already exists"
end
  puts "What is your movie rating?"
  rating= gets.chomp
  movies[title.to_sym]= rating.to_i
when "update"
  puts "What is your film suggestion?"
  title= gets.chomp
  if movies[title.to_s].nil?
    puts"Your film does not exist!"
  else
    movies[title.to_sym]
  end


  
when "display"
  movies.each do |movie,rating| 
  puts "#{movie}: #{rating}"
  end
when "delete"
  puts "What is your film suggestion?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "That film does not exist!"
  else
    movies.delete(title.to_sym)
  end
    puts "Error!"
end