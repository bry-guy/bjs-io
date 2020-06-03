require_relative '../lib/helpers/markdown_parser'

include MarkdownParser

class IncludeContent < ActiveRecord::Migration[6.0]
  path = "app/content/"
  Dir.foreach(path) do |filename|
    next if /^\.{1,2}/.match(filename)

    date = /\d{4}-\d{2}-\d{2}/.match(filename).to_s
    title = filename.split(date)[1][1..].gsub(".md", "").downcase
    puts "title: #{title}"
    content = File.read(path+filename)
    Blog.find_by_title(title) || Blog.create(title: title, date: date, tags: "", visible: true, content: content, content_parsed: MarkdownParser.parse_markdown(content))
  end
end
