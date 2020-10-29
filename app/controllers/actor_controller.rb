class ActorController < ActionController::Base
  def home
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/actor_home.html.erb"})
  end

end