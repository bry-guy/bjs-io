require_relative '../../lib/helpers/markdown_parser'

include MarkdownParser

class Blog < ApplicationRecord
  def display_date
    self.date.strftime("%B %e, %Y")
  end

  def display_title
    self.title.tr("-", " ").titleize
  end

  def display_preview
    # TODO: Write this into the DB
    if (preview == "")
      return "#{MarkdownParser.strip_markdown(self.content[0,279])}..."
    end
    preview
  end
end
