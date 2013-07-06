require 'spec_helper'

describe Movie do
  it "gets created" do
    movie = Movie.new(:name => "Titanic")
    movie.save

    movies = Movie.all
    expect(movies).to include(movie)
  end

  it "gets created without a name" do
    movie = Movie.new

    expect(movie.valid?).to be_false
  end
end
