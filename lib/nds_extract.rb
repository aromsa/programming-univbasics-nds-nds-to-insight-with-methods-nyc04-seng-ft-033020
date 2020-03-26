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
    coordinate_total += directors_database[row_index][column_index][inner_index][:price]
    inner_index += 1
  end
  coordinate_total
end

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
