require "sinatra"
require "./lib/documentation_badge"

class Application < Sinatra::Base
  get "/" do
    send_file "public/index.html"
  end

  get "/:owner/:repo/badge.svg" do
    cache_control "max-age=60"
    content_type "image/svg+xml"
    DocumentationBadge::Badge.new(params[:owner], params[:repo]).svg
  end
end
