class MovieController < ActionController::Base
  def home
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/movie_home.html.erb"})
  end

  def details
    movie_id = params.fetch("movie_id")
    @the_movie = Movie.where({ :id =>movie_id}).at(0)
    @filmography = Movie.where({ :movie_id => @the_movie.id})

    render({ :template => "movie_templates/movie_details.html.erb"})

  end
  
end