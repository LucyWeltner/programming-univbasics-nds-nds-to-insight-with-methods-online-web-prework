$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
def gross_for_director(nds, directornum)
  moviecounter = 0 
  total_gross = 0
  number_of_movies = nds[directornum][:movies].length
  while moviecounter < number_of_movies do
    total_gross += 
  

def directors_totals(nds)
  i = 0 
  j = 0
  directors_hash = {}
  while i < nds.length do
    while j < nds[i][:movies].length do
      p nds[i][:movies][j]
      money = nds[i][:movies][j][:worldwide_gross]
      total += money
      j += 1
    end
    directors_hash[nds[i][:name]] = total
    i += 1
    j = 0
    total = 0
  end
end 

directors_totals(directors_database())
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
end
