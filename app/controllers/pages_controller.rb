class PagesController < ApplicationController
  def home
  end

  def about
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
