class EnquiriesController < ApplicationController

  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      EnquiriesMailer.new_enquiry(@enquiry.id).deliver!
    end
  end

  private
    def enquiry_params
      params.require(:enquiry).permit(:email, :project_title, :project_description, :project_budget, :new_project,
                                      :service_required, :project_type, :phone_number, :name)
    end
end
