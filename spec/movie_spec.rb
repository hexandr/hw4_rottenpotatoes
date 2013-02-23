require 'spec_helper'

decribe Movie do
  before(:each) do
    @movie = Movie.new
  end

  it "should be valid" do
    @movie.should be_valid
  end
end
