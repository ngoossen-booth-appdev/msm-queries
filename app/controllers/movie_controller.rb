class MovieController < ActionController::Base
  def index
    render({ :template => "movie_templates/index.html.erb"})
  end

end