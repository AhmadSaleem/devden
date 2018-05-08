class Enquiry < ApplicationRecord
  validates :email, :project_title, :project_description, presence: true
end
