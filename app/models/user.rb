class User < ApplicationRecord
  has_many :routines
  # has_manyは1つのuserに対して複数のroutineが紐づけられることを意味する。その際、複数形を用いる。

  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 5 }
end
