class ActorController < ActionController::Base
  def index
    render({ :template => "actor_templates/index.html.erb"})
  end

end