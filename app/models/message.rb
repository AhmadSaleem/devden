class Message < ApplicationRecord
  validates :name, :email, :subject, :text, presence: true
end
