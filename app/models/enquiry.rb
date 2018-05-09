class Enquiry < ApplicationRecord
  enum project_type: {
    web_app:    1,
    mobile_app: 2
  }

  enum service_required: {
    engineering:        1,
    ui_design:          2,
    quality_assurance:  3,
    ux_design:          4,
    project_management: 5
  }

  validates :email, :project_title, :project_description, :project_type, :service_required, :phone_number,
            presence: true
end
