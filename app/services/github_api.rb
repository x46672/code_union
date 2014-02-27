class GithubApi
  attr_reader :username,
              :repo

  def initialize(username, repo, project_id)
    @username = username
    @project_id = project_id
    @repo = repo
  end

  def connection
    Faraday.new(url: "https://api.github.com")
  end

  def commits
    response = connection.get("/repos/#{username}/#{repo}/commits")
    JSON.parse(response.body)
  end 

  def save_commits  
    commits.collect { |commit| save_commit(commit) }
  end

  def save_commit(commit)
    if commit.class != Array
      commit = Commit.create(
        username:  commit["committer"]["login"], 
        email:     commit["commit"]["committer"]["email"],
        date_time: commit["commit"]["committer"]["date"],
        message:   commit["commit"]["message"],
        sha:       commit["sha"],
        pic:       commit["committer"]["avatar_url"],
        project_id: @project_id
        )
      
      return commit
    else
    end
    
  end

end

