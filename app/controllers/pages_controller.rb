class PagesController < ApplicationController
  def index
    @enquiry = Enquiry.new
    @portfolio_items = PortfolioItem.all
    @message = Message.new
  end

  def about
  end

  def contact
    @message = Message.new
  end
end
