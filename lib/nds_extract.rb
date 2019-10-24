$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
def gross_for_director(director_data)
  moviecounter = 0 
  gross_of_director = 0
  number_of_movies = directors_database[director_data][:movies].length
  while moviecounter < number_of_movies do
    gross_of_movie = directors_database[director_data][:movies][moviecounter][:worldwide_gross]
    gross_of_director += gross_of_movie
    moviecounter += 1
  end 
  return gross_of_director 
end

def directors_totals(nds)
  i = 0 
  directors_hash = {}
  while i < nds.length do
    p i
    directors_gross = gross_for_director(i)
    directors_name = nds[i][:name]
    directors_hash[directors_name] = directors_gross
    i += 1
  end
  return directors_hash
end 

directors_totals(directors_database())