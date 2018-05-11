class EnquiriesMailer < ApplicationMailer

  def new_enquiry(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail(to: "ahmad@thedevden.co", Subject: "You have a new enquiry")
  end
end
