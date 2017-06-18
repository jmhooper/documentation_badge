module DocumentationBadge
  class Badge
    attr_reader :github_owner, :github_repo

    def initialize(owner, repo)
      @github_owner = owner
      @github_repo = repo
    end

    def svg
      @svg ||= ShieldSVGClient.new(text, color).download_badge_svg
    end

    private

    def color
      if issue_count.zero?
        "blue"
      elsif issue_count < 10
        "yellow"
      else
        "red"
      end
    end

    def text
      if issue_count == 1
        "#{issue_count} issue"
      else
        "#{issue_count} issues"
      end
    end

    def issue_count
      @issue_count ||= DocumentationIssueCounter.new(
        github_owner,
        github_repo,
      ).count_issues
    end
  end
end
