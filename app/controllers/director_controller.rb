class DirectorController < ActionController::Base
  def index
    @list_of_directors = Director.all


    render({ :template => "director_templates/index.html.erb"})
  end

  def details
    @director_id = params.fetch("director_id")

    render({ :template => "director_templates/director_details.html.erb"})

  end

  def eldest
    # @director_id = params.fetch("director_id")

    render({ :template => "director_templates/director_eldest.html.erb"})

  end

  def youngest
    # @director_id = params.fetch("director_id")

    render({ :template => "director_templates/director_youngest.html.erb"})

  end



end