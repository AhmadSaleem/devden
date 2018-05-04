class PagesController < ApplicationController
  def index
    @enquiry = Enquiry.new
  end

  def about
  end

  def contact
    @message = Message.new
  end
end
