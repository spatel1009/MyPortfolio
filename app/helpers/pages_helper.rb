module PagesHelper
  def portfolios
    link_to 'portfolio', portfolios_path
  end

  def myresume
    link_to '(My Resume)', resume_path
  end
end
