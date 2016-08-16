class Question < ApplicationRecord
  # has_many :answers
  # has_many :users, through: :answers
  belongs_to :user, inverse_of: :question
end
