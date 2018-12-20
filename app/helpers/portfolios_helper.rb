module PortfoliosHelper
  def new_portfolio
    if logged_in?(:site_admin)
      link_to 'Create New Portfolio', new_portfolio_path
    end
  end

  def my_github
    link_to 'my personal github', 'https://www.github.com/spatel1009'
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language || :text).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      lax_html_blocks: true,
    }

    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end
end
