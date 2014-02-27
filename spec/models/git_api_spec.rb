require_relative '../../app/models/git_api'

describe "GitApi" do
  it 'allows me to get commits for a repo' do
    client = GitApi.new

    # when we make our github call, we always get back
    # the dummy request.
    dummy_response = {sha: "abc123", message: "Hello world!"}

    username = "x46672"
    repo = "the-repo"
    commits = client.commits_for(username, repo)

    expect(commits).to eq [GitCommit.new("abc123", "Hello world!")]
  end

  context "when the repo doesn't exist"
  context "when the username doesn't exist"

end
