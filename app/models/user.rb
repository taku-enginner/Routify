class User < ApplicationRecord
  has_many :routine

  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 5 }
end
