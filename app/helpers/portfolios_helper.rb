module PortfoliosHelper
  def new_portfolio
    if logged_in?(:site_admin)
      link_to 'Create New Portfolio', new_portfolio_path
    end
  end

  def my_github
    link_to 'my personal github', 'https://www.github.com/spatel1009'
  end
end
