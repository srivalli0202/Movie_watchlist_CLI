class Movie
    attr_accessor :title, :watched, :rating, :review

    def initialize(title)
        @title = title
        @watched = false
        @rating = nil
        @review = nil
    end

    def mark_as_watched
        @watched = true
    end

    def add_review(rating, review)
        @rating = rating
        @review = review
        
    end

    def display_info
        status = @watched? "Watched" : "unwatched"
        info = "#{@title} - #{status}"
        info += ", Rating: #{@rating}, Review: #{@review}" if @watched
        info
    end
end