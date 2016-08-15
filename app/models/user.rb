class User < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :questions, through: :answers
  has_many :tutorials
end
