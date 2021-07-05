$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'



def directors_totals(nds)

  total = {}
  index = 0

  while index <  nds.length do
    d_name = nds[index][:name]
    total[d_name] = 0
    counter = 0
    while counter < nds[index][:movies].length do
    total[d_name] += nds[index][:movies][counter][:worldwide_gross]
    counter += 1
    end
    index += 1
  end
  return total

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

end
