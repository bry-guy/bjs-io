require 'redcarpet'
require 'coderay' 

module ApplicationHelper
  class HTMLCodeRay < Redcarpet::Render::HTML  
    def block_code(code, language)  
      CodeRay.scan(code, language).div
    end  
  end  

  # TODO: Determine if this can be done once rather than every time
  def parse_markdown(text)
    renderer = HTMLCodeRay.new(filter_html: true,  hard_wrap: true)
    options = {
        :fenced_code_blocks => true,
        :no_intra_emphasis => true,
        :autolink => true,
        :strikethrough => true,
        :lax_html_blocks => true,
        :superscript => true,
        :tables => true
    }
    md = Redcarpet::Markdown.new(renderer, options)
    md.render(text)
  end

end
