class Routine < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
end
