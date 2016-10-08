class Question < ApplicationRecord
  # has_many :answers
  # has_many :users, through: :answers
  belongs_to :user, inverse_of: :question
  validates :newbie, presence: true
  validates :tutorials, presence: true
  validates :program, presence: true
  validates :website, presence: true
  validates :work, presence: true
  validates :bootcamp, presence: true
  validates :compsci, presence: true
  validates :rlsgrl_rlsbrg, presence: true
  validates :continue, presence: true
  validates :support, presence: true
  validates :experience, presence: true
  validates :experience, length: { maximum: 500 }
end
