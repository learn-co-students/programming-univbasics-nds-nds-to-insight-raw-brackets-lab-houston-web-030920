@@ -1,22 +1,37 @@
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def get_director_name(nds)
  director_name_list = []
  nds.each do |director|
    director_name_list << director[:name]
  end
  director_name_list
end

def get_director_total(nds)
  director_total_numbers = []
  nds.each do |director|
    total = 0
    director[:movies].each do |movie_price|
      total += movie_price[:worldwide_gross]
      end
    director_total_numbers << total
  end
  director_total_numbers
end

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  director_name_list = get_director_name(nds)
  director_total_numbers = get_director_total(nds)

  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil

  director_name_list.each do |director|
    result[director] = director_total_numbers[director_name_list.index(director)]
  end

  result
end