class Enquiry < ApplicationRecord
  validates :email, :project_title, :project_budget, :project_description, presence: true
end
