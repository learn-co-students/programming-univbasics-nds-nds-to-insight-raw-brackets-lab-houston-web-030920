require 'pp' 

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  all_directors = nds
  
  grand_totals = {}
  directors = 0 
  while directors < all_directors.count do
    total_movie_gross = 0 
    movie_counter = 0 
    while movie_counter < all_directors[directors][:movies].count do 
      total_movie_gross += all_directors[directors][:movies][movie_counter][:worldwide_gross]
      movie_counter += 1 
    end
    grand_totals[all_directors[directors][:name]] = total_movie_gross
    directors += 1 
  end
  return grand_totals
end

#def print_first_directors_movie_titles
#  movies = directors_database[0][:movies]
	
#	movie_index = 0
#	while movie_index < movies.count do
#		puts "#{movies[movie_index][:title]}"
#		movie_index += 1
#	end
#end