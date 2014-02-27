class CodeClimateApi
  attr_reader :project

  def initialize(project, project_id)
    @project_id = project_id

    @project = project
  end

  def connection
    Faraday.new(url: "https://codeclimate.com")
  end

  def score
    response = connection.get("/api/repos/#{project}?api_token=509b0085aeb3adfc9507d252e0175d7743245d49")
    JSON.parse(response.body)
  end 

  def save_score
    CodeClimate.create!(score: score["last_snapshot"]["gpa"], project_id: @project_id)
  end
end
