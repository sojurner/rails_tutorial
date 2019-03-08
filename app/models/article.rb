class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {minimum: 4, maximum: 25}
  validates :description, presence: true, length: {minimum: 4}
  validates :user_id, presence: true
end

# Validation Helpers:
# https://guides.rubyonrails.org/active_record_validations.html