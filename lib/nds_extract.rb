$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(nds)
  result = {
  }
  
  directors_index = 0 
  while directors_index < directors_database.length do
    movies_index = 0
    gross_total = 0
    while movies_index < directors_database[directors_index][:movies].length do
      gross_total = gross_total + directors_database[directors_index][:movies][movies_index][:worldwide_gross]
      movies_index += 1
    end
    result[directors_database[directors_index][:name]] = gross_total
    directors_index += 1
  end
  
  pp result
end
