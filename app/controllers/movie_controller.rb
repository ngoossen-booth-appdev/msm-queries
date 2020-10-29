class MovieController < ActionController::Base
  def home
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/movie_home.html.erb"})
  end

end