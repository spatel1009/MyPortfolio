module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Sohel Patel Portfolio Site"
    @seo_keywords = "Sohel Patel portfolio"
  end
end