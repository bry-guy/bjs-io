class Blog < ApplicationRecord
  def display_title
    self.title.tr("-", " ")
  end
end
