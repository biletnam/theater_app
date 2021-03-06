# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Movie.create(:name => "The Shawshank Redemption")
Movie.create(:name => "The Godfather")
Movie.create(:name => "The Godfather: Part II")
Movie.create(:name => "Pulp Fiction")
Movie.create(:name => "The Good, the Bad and the Ugly")
Movie.create(:name => "The Dark Knight")
Movie.create(:name => "12 Angry Men")
Movie.create(:name => "Schindler's List")
Movie.create(:name => "The Lord of the Rings: The Return of the King")
Movie.create(:name => "Fight Club")
Movie.create(:name => "Star Wars: Episode V - The Empire Strikes Back")

movies = Movie.all

movies.each do |movie|
  Showtime.create(:date => "2013/07/14", :start_time => "16:55", :movie_id => movie.id)
  Showtime.create(:date => "2013/07/14", :start_time => "19:55", :movie_id => movie.id)
end

showtimes = Showtime.all

showtimes.each do |showtime|

  Seat.create(:row => "1", :chair_letter => "A", :showtime_id => showtime.id )
  Seat.create(:row => "1", :chair_letter => "B", :showtime_id => showtime.id )
  Seat.create(:row => "1", :chair_letter => "C", :showtime_id => showtime.id )
  Seat.create(:row => "1", :chair_letter => "D", :showtime_id => showtime.id )
  Seat.create(:row => "1", :chair_letter => "E", :showtime_id => showtime.id )
  Seat.create(:row => "1", :chair_letter => "F", :showtime_id => showtime.id )
  Seat.create(:row => "1", :chair_letter => "G", :showtime_id => showtime.id )
  Seat.create(:row => "1", :chair_letter => "H", :showtime_id => showtime.id )
  Seat.create(:row => "1", :chair_letter => "I", :showtime_id => showtime.id )
  Seat.create(:row => "2", :chair_letter => "A", :showtime_id => showtime.id )
  Seat.create(:row => "2", :chair_letter => "B", :showtime_id => showtime.id )
  Seat.create(:row => "2", :chair_letter => "C", :showtime_id => showtime.id )
  Seat.create(:row => "2", :chair_letter => "D", :showtime_id => showtime.id )
  Seat.create(:row => "2", :chair_letter => "E", :showtime_id => showtime.id )
  Seat.create(:row => "2", :chair_letter => "F", :showtime_id => showtime.id )
  Seat.create(:row => "2", :chair_letter => "G", :showtime_id => showtime.id )
  Seat.create(:row => "2", :chair_letter => "H", :showtime_id => showtime.id )
  Seat.create(:row => "2", :chair_letter => "I", :showtime_id => showtime.id )
  Seat.create(:row => "3", :chair_letter => "A", :showtime_id => showtime.id )
  Seat.create(:row => "3", :chair_letter => "B", :showtime_id => showtime.id )
  Seat.create(:row => "3", :chair_letter => "C", :showtime_id => showtime.id )
  Seat.create(:row => "3", :chair_letter => "D", :showtime_id => showtime.id )
  Seat.create(:row => "3", :chair_letter => "E", :showtime_id => showtime.id )
  Seat.create(:row => "3", :chair_letter => "F", :showtime_id => showtime.id )
  Seat.create(:row => "3", :chair_letter => "G", :showtime_id => showtime.id )
  Seat.create(:row => "3", :chair_letter => "H", :showtime_id => showtime.id )
  Seat.create(:row => "3", :chair_letter => "I", :showtime_id => showtime.id )
  Seat.create(:row => "4", :chair_letter => "A", :showtime_id => showtime.id )
  Seat.create(:row => "4", :chair_letter => "B", :showtime_id => showtime.id )
  Seat.create(:row => "4", :chair_letter => "C", :showtime_id => showtime.id )
  Seat.create(:row => "4", :chair_letter => "D", :showtime_id => showtime.id )
  Seat.create(:row => "4", :chair_letter => "E", :showtime_id => showtime.id )
  Seat.create(:row => "4", :chair_letter => "F", :showtime_id => showtime.id )
  Seat.create(:row => "4", :chair_letter => "G", :showtime_id => showtime.id )
  Seat.create(:row => "4", :chair_letter => "H", :showtime_id => showtime.id )
  Seat.create(:row => "4", :chair_letter => "I", :showtime_id => showtime.id )
  Seat.create(:row => "5", :chair_letter => "A", :showtime_id => showtime.id )
  Seat.create(:row => "5", :chair_letter => "B", :showtime_id => showtime.id )
  Seat.create(:row => "5", :chair_letter => "C", :showtime_id => showtime.id )
  Seat.create(:row => "5", :chair_letter => "D", :showtime_id => showtime.id )
  Seat.create(:row => "5", :chair_letter => "E", :showtime_id => showtime.id )
  Seat.create(:row => "5", :chair_letter => "F", :showtime_id => showtime.id )
  Seat.create(:row => "5", :chair_letter => "G", :showtime_id => showtime.id )
  Seat.create(:row => "5", :chair_letter => "H", :showtime_id => showtime.id )
  Seat.create(:row => "5", :chair_letter => "I", :showtime_id => showtime.id )
  Seat.create(:row => "6", :chair_letter => "A", :showtime_id => showtime.id )
  Seat.create(:row => "6", :chair_letter => "B", :showtime_id => showtime.id )
  Seat.create(:row => "6", :chair_letter => "C", :showtime_id => showtime.id )
  Seat.create(:row => "6", :chair_letter => "D", :showtime_id => showtime.id )
  Seat.create(:row => "6", :chair_letter => "E", :showtime_id => showtime.id )
  Seat.create(:row => "6", :chair_letter => "F", :showtime_id => showtime.id )
  Seat.create(:row => "6", :chair_letter => "G", :showtime_id => showtime.id )
  Seat.create(:row => "6", :chair_letter => "H", :showtime_id => showtime.id )
  Seat.create(:row => "6", :chair_letter => "I", :showtime_id => showtime.id )
  Seat.create(:row => "7", :chair_letter => "A", :showtime_id => showtime.id )
  Seat.create(:row => "7", :chair_letter => "B", :showtime_id => showtime.id )
  Seat.create(:row => "7", :chair_letter => "C", :showtime_id => showtime.id )
  Seat.create(:row => "7", :chair_letter => "D", :showtime_id => showtime.id )
  Seat.create(:row => "7", :chair_letter => "E", :showtime_id => showtime.id )
  Seat.create(:row => "7", :chair_letter => "F", :showtime_id => showtime.id )
  Seat.create(:row => "7", :chair_letter => "G", :showtime_id => showtime.id )
  Seat.create(:row => "7", :chair_letter => "H", :showtime_id => showtime.id )
  Seat.create(:row => "7", :chair_letter => "I", :showtime_id => showtime.id )
  Seat.create(:row => "8", :chair_letter => "A", :showtime_id => showtime.id )
  Seat.create(:row => "8", :chair_letter => "B", :showtime_id => showtime.id )
  Seat.create(:row => "8", :chair_letter => "C", :showtime_id => showtime.id )
  Seat.create(:row => "8", :chair_letter => "D", :showtime_id => showtime.id )
  Seat.create(:row => "8", :chair_letter => "E", :showtime_id => showtime.id )
  Seat.create(:row => "8", :chair_letter => "F", :showtime_id => showtime.id )
  Seat.create(:row => "8", :chair_letter => "G", :showtime_id => showtime.id )
  Seat.create(:row => "8", :chair_letter => "H", :showtime_id => showtime.id )
  Seat.create(:row => "8", :chair_letter => "I", :showtime_id => showtime.id )

end
