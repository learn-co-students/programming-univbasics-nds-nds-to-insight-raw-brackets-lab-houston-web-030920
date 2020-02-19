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
  directors_totals = {}
  director_index = 0
   while director_index < nds.length do
     total = 0
     inner_index = 0
     movies = nds[director_index][:movies]
    while inner_index < movies.length do
       total += movies[inner_index][:worldwide_gross]
       inner_index += 1 
     end
     directors_totals[nds[director_index][:name]] = total
     director_index += 1
  end
 return directors_totals
end
