require "net/https"

module DocumentationBadge
  class ShieldSVGClient
    attr_reader :text, :color

    def initialize(text, color)
      @text = text
      @color = color
    end

    def download_badge_svg
      Net::HTTP.get(badge_uri)
    end

    private

    def badge_uri
      url = "https://img.shields.io/badge/"
      url += "documentation-#{text}-#{color}.svg"
      url += "?style=flat-square"
      url = URI.encode(url)

      URI(url)
    end
  end
end
