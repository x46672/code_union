class TravisApi
  attr_reader :project, :username

  def initialize(project, project_id)
    @project = project
    @project_id = project_id

  end

  def connection
    Faraday.new(url: "https://api.travis-ci.org")
  end


  def all_states
    response = connection.get("/repos/#{project}")
    body = JSON.parse(response.body)
    save_state(body)
  end 

  def save_states    
    all_states
  end

  def save_state(state)
    state = Travis.create!(
      state:     state["last_build_status"],
      project_id: @project_id
    )
    state
  end
end
