class ActorController < ActionController::Base
  def home
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/actor_home.html.erb"})
  end

    def details
    actor_id = params.fetch("actor_id")
    @the_actor = Actor.where({ :id =>actor_id}).at(0)
    #characters played
    @characters = Character.where({ :actor_id => @the_actor.id})
    #movies stared in
    #@movies = Movie.where({:movie_id => @characters.id})

    render({ :template => "actor_templates/actor_details.html.erb"})

  end

end