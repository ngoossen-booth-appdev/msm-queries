class MovieController < ActionController::Base
  def home
    render({ :template => "movie_templates/movie_home.html.erb"})
  end

end