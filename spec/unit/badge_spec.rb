describe "Badge" do
  describe "#svg" do
    let(:documentation_issue_counter) { double }
    let(:shield_svg_client) { double }

    before do
      # Mock individual objects
      allow(documentation_issue_counter).to receive(:count_issues).
        and_return(123)
      allow(shield_svg_client).to receive(:download_badge_svg).
        and_return("I'm a badge 🎫")

      # Mock classes
      allow(DocumentationIssueCounter).to receive(:new).
        with("my-owner", "my-repo").
        and_return(documentation_issue_counter)
      allow(ShieldSVGClient).to receive(:new).
        with("123 issues", "red").
        and_return(shield_svg_client)
    end

    it "should render SVG markup of the badge" do
      badge = Badge.new("my-owner", "my-repo")
      expect(badge.svg).to eq("I'm a badge 🎫")
    end
  end
end
