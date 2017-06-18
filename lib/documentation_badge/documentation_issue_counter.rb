require "octokit"

module DocumentationBadge
  class DocumentationIssueCounter
    attr_reader :repo_name

    def initialize(owner, repo)
      @repo_name = "#{owner}/#{repo}"
    end

    def count_issues
      search_results = Octokit.search_issues(search_query)
      search_results[:total_count]
    end

    private

    def search_query
      [
        "label:documentation",
        "state:open",
        "repo:#{repo_name}",
      ].join(" ")
    end
  end
end
