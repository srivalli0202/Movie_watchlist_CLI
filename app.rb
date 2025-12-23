require_relative "movie"
require_relative 'watchlist'

class MovieWatchlistCLI
    def initialize
        @watchlist = Watchlist.new
    end

    def start 
        puts "Welcome to Movie Watchlist CLI"
        loop do
            puts "\nChoose an option:"
            puts "1. Add a movie"
            puts "2. Mark movie as watched"
            puts "3. Add review"
            puts "4. View watchlist"
            puts "5. Exit"
            print ">"
            choice = gets.chomp
            
            
            case choice
            when "1"
                add_movie
            when "2"
                mark_watched
            when "3"
                add_review
            when "4"
                view_watchlist
            when "5"
                puts "Goodbye!"
                break
            else
                puts "Invalid option. Try again."
            end
        end
    end

    def add_movie
        print "Enter movie title: "
        title = gets.chomp
        @watchlist.add_movie(Movie.new(title))
        puts "'#{title}' added to your watchlist!"
    end

    def mark_watched
        print "Enter movie title to mark as watched: "
        title = gets.chomp
        movie = @watchlist.find_movie(title)
        if movie
            movie.mark_as_watched
            puts "'#{title}' marked as watched."
        else
            puts "Movie not found."
        end
    end

    def add_review
        print "Enter movie title (not rating): "
        title = gets.chomp
        movie = @watchlist.find_movie(title)
        if movie && movie.watched
            print "Enter rating (1-5): "
            rating = gets.chomp.to_i
            print "Enter review: "
            review = gets.chomp
            movie.add_review(rating, review)
            puts "Review added!"
        else
            puts "Movie not marked as watched or Movie not found."
        end
    end

    def view_watchlist
        puts "\n Your Watchlist: "
        @watchlist.list_movies
    end
end

cli = MovieWatchlistCLI.new
cli.start



