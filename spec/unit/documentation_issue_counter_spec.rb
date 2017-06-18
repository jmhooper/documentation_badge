require "spec_helper"

describe "DocumentationIssueCounter" do
  it "constructs the repo name correctly" do
    counter = DocumentationIssueCounter.new("my-org", "my-repo")
    expect(counter.repo_name).to eq("my-org/my-repo")
  end

  describe "#count_issues" do
    it "returns the number of documentation issues on the repo" do
      github_issues_query = ""

      allow(Octokit).to receive(:search_issues) do |query|
        github_issues_query = query
        { total_count: 123 }
      end

      counter = DocumentationIssueCounter.new("my-org", "my-repo")
      result = counter.count_issues

      expect(result).to eq(123)
      expect(github_issues_query).to include("label:documentation")
      expect(github_issues_query).to include("state:open")
      expect(github_issues_query).to include("repo:my-org/my-repo")
    end
  end
end
