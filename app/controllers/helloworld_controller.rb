class HelloworldController < ApplicationController
  def index
    @content = File.read("app/content/lorem-ipsum.md")
  end
end
