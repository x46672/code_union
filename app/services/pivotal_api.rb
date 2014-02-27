class PivotalApi
  attr_reader :project

  def initialize(project, project_id)
    @project = project
    @project_id = project_id
  end

  def connection
    Faraday.new(url: "https://www.pivotaltracker.com")
  end

  def all_stories
    response = connection.get("/services/v5/projects/#{project}/stories")
    JSON.parse(response.body)
  end 

  def save_stories    
    all_stories.collect { |story| save_story(story) }
  end

  def save_story(story)
    story = PivotalStory.create(
    story_name:     story["name"],
    current_state:  story["current_state"],
    story_owner_id: story["owned_by_id"],
    project_id:     @project_id
    )
    story
  end
  
end
