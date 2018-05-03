class PortfolioItemsController < ApplicationController
  before_action :set_item, only: [:show]

  def index
    @portfolio_items = PortfolioItem.all
  end

  def show
  end


  private

    def set_item
      @portfolio_item = PortfolioItem.find(params[:id])
    end
end
