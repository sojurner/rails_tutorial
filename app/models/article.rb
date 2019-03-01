class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 4}


end

# Validation Helpers:
# https://guides.rubyonrails.org/active_record_validations.html