require "spec_helper"

RSpec.feature "Generating a badge", type: :feature, js: true do
  def stub_shield_request
    shield_url = "https://img.shields.io/badge/"
    shield_url += "documentation-123%20issues-red.svg?style=flat-square"

    stub_request(:get, shield_url).
      to_return(body: "this is a badge 🎫")
  end

  def stub_octokit
    allow(Octokit).to receive(:search_issues).and_return(total_count: 123)
  end

  before do
    stub_shield_request
    stub_octokit
  end

  scenario "generating a badge and seeing a markdown preview" do
    badge_regex = /\!\[Documentation badge\]\([^\)]+\/jmhooper\/documentation_badge\/badge\.svg\)/

    visit "/"
    fill_in :owner, with: "jmhooper"
    fill_in :repo, with: "documentation_badge"
    click_on "Generate"
    expect(page).to have_content badge_regex
  end

  scenario "generating a badge and seeing a preview image" do
    visit "/"
    fill_in :owner, with: "jmhooper"
    fill_in :repo, with: "documentation_badge"
    click_on "Generate"
    expect(page).to have_css(
      "img[src$='/jmhooper/documentation_badge/badge.svg']",
    )
  end
end
