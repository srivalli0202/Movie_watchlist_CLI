# tests/test_movie.rb

require 'minitest/autorun'
require './movie'

class TestMovie < Minitest::Test
    def test_initialization
        movie = Movie.new("Avatar")
        movie.mark_as_watched
        assert movie.watched
    end

    def test_mark_as_watched
        movie = Movie.new("Avatar")
        movie.mark_as_watched
        assert movie.watched
    end

    def test_add_review
        movie = Movie.new("Avatar")
        movie.mark_as_watched
        movie.add_review(5, "Good visuals!")
        assert_equal 5, movie.rating
        assert_equal "Good visuals!", movie.review
    end
end
