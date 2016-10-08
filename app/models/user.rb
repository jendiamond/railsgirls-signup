class User < ApplicationRecord
  # has_many :answers, dependent: :destroy
  # has_many :questions, through: :answers
  has_one :question, inverse_of: :user, dependent: :destroy 
  has_one :tutorial, dependent: :destroy 
  accepts_nested_attributes_for :question
  validates :first_name, presence: true
  validates :first_name, length: { minimum: 2 }
  validates :first_name, length: { minimum: 30 }
  validates :last_name, presence: true
  validates :last_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 30 }
  validates :email, presence: true
  validates :over_21, presence: true
  validates :operating_system, presence: true
end
