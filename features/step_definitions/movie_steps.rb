Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
     Movie.create(movie)
  end
end

#  When I go to the edit page for "Alien"
#  And  I fill in "Director" with "Ridley Scott"
#  And  I press "Update Movie Info"
#  Then the director of "Alien" should be "Ridley Scott"

Then /the (.+) of "([^"]+)" should be "([^"]+)"/ do |field_name, movie_title, expected_value|
  movie = Movie.find_by_title movie_title
  assert_equal(expected_value, movie.send(field_name))
end
