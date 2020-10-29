class CharacterController < ApplicationController
  def home
    @list_of_characters = Character.all
    render({ :template => "movie_templates/movie_home.html.erb"})
  end

end