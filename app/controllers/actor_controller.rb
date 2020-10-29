class ActorController < ActionController::Base
  def home
    render({ :template => "actor_templates/actor_home.html.erb"})
  end

end