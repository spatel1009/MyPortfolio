module PortfoliosHelper
  def new_portfolio
    if logged_in?(:site_admin)
      link_to 'Create New Portfolio', new_portfolio_path
    end
  end
end
