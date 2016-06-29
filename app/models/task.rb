class Task < ApplicationRecord
  acts_as_votable

  has_many :usertasks
  has_many :users, through: :usertasks

  has_many :comments
end
