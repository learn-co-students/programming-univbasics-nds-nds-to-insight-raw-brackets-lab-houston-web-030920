$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #pp directors_database[0][:movies][0][:worldwide_gross]
  #pp directors_database
  total = 0
  directors_totals = {}
  director_index = 0
   while director_index < directors_database.length do
     inner_index = 0
     movies = directors_database[director_index][:movies]
    while inner_index < movies.length do
       total += movies[inner_index][:worldwide_gross]
       pp total
       result = {"#{directors_database[director_index][:name]}" => total}
       inner_index += 1 
     end
     #result = {"#{directors_database[director_index][:name]}" => total}
     director_index += 1
     pp result
  end
 return result
end
