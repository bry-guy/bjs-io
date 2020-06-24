class AboutController < ApplicationController
  def index
    @content = File.read("app/content/about.md")
  end
end
