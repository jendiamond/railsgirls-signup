FactoryGirl.define do
  factory :question do
    boolean_question false
    string_question "MyString"
    text_question "MyText"
    integer_question 1
  end
end
