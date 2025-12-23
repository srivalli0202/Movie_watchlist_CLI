class Watchlist
    attr_accessor :movies

    def initialize
        @movies = []
    end

    def add_movie(movie)
        @movies << movie
    end

    def list_movies
        @movies.each_with_index do |movie, index|
            puts "#{index + 1}. #{movie.display_info}"
        end
    end

    def find_movie(title)
        @movies.find { |movie| movie.title.downcase == title.downcase }
    end
end