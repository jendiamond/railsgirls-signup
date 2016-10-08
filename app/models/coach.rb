class Coach < ApplicationRecord
  validates :first_name, presence: true
  validates :first_name, length: { minimum: 2 }
  validates :first_name, length: { minimum: 30 }
  validates :last_name, presence: true
  validates :last_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 30 }
  validates :email, presence: true
  validates :days, presence: true
  validates :operating_system, presence: true
end
