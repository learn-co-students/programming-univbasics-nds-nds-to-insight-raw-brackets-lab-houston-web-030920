$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result={}
directors_index=0
while directors_index<nds.count do
  total=0 
  directorsname=nds[directors_index][:name]
  movies=nds[directors_index][:movies]
  movies_index=0
  while movies_index<movies.count do 
    gross= movies[movies_index][:worldwide_gross]
    total+=gross
    movies_index+=1 
  
end
  result[directorsname]=total
  directors_index+=1
end
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
 
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
 result
end

