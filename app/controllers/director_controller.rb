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
    @eldest_director = Director.order({ :dob => :asc }).where.not({ :dob => nil }).at(0)
    
    
    render({ :template => "director_templates/director_eldest.html.erb"})

  end

  def youngest
    @youngest_director = Director.order({ :dob => :desc }).where.not({ :dob => nil }).at(0)
    render({ :template => "director_templates/director_youngest.html.erb"})

  end



end