$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length do
   d_name = nds[row_index][:name]
    column_index = 0
    while column_index < nds[row_index][:movies].length do
      if result[d_name]
      result[d_name] += nds[row_index][:movies][column_index][:worldwide_gross]
      else result[d_name] = nds[row_index][:movies][column_index][:worldwide_gross]
      end
    column_index += 1
    end
  row_index += 1
  end
return result
end
    
  #e
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
