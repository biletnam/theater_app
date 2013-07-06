class AddMovieToShowtime < ActiveRecord::Migration
  def change
    add_column :showtimes, :movie_id, :integer
  end
end
