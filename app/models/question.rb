class Question < ApplicationRecord
  # has_many :answers
  # has_many :users, through: :answers
  belongs_to :user, inverse_of: :question

  def rating_count
    count = 0
    if @question.html_css
      count + 1
    end
    if @question.tutorials
      count + 1
    end
     if @question.study_group
      count + 1
    end
     if @question.program
      count + 1
    end
     if @question.website
      count + 1
    end
    count
  end
end
