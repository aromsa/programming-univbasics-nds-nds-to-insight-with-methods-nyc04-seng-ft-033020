$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data, row_index, column_index)
  coordinate_total = 0
  inner_len = directors_database[row_index][column_index].length
  inner_index = 0
  while inner_index < inner_len do
    coordinate_total += directors_database[row_index][column_index][inner_index][:worldwide_grosses]
    inner_index += 1
  end
  coordinate_total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  result = {}
i = 0
while i < nds.length do
  name = nds[i][:name] #iterates over the names in directors_database
  j = 0 #counter for next while loop
movies = nds[i][:movies]
    gross = 0
    while j < movies.length do
      gross += movies[j][:worldwide_gross]
      j += 1
    end
    result[name] = gross
    i += 1
  end
  result = {}
  nil
end

