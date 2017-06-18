describe "ShieldSVGClient" do
  describe "#download_badge_svg" do
    it "returns a badge from shields.io" do
      shield_url = "https://img.shields.io/badge/"
      shield_url += "documentation-123%20issues-red.svg?style=flat-square"

      stub_request(:get, shield_url).
        to_return(body: "this is a badge 🎫")

      client = ShieldSVGClient.new("123 issues", "red")
      result = client.download_badge_svg

      expect(result).to eq("this is a badge 🎫")
    end
  end
end
