class User < ApplicationRecord
  # has_many :answers, dependent: :destroy
  # has_many :questions, through: :answers
  has_one :question, inverse_of: :user, dependent: :destroy 
  has_one :tutorial, dependent: :destroy 
  accepts_nested_attributes_for :question
end
