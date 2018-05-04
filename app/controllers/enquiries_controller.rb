class EnquiriesController < ApplicationController

  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      EnquiriesMailer.new_enquiry(@enquiry.id).deliver_later
    end
  end

  private
    def enquiry_params
      params.require(:enquiry).permit(:email, :project_title, :project_description, :project_budget)
    end
end
