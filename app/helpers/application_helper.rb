module ApplicationHelper
  def login_helper style = ''
    if logged_in?(:site_admin)
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style 
    end
  end

  def source_helper
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    SohelViewTool::Renderer.copyright 'Sohel Patel', 'All rights reserved.'
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About Me'
      },
      {
        url: resume_path,
        title: 'Resume'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
    ]
  end
  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end


  def active? path
    'active' if current_page? path
  end
  
end
