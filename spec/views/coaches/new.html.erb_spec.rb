require 'rails_helper'

RSpec.describe "coaches/new", type: :view do
  before(:each) do
    assign(:coach, Coach.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :twitter => "MyString",
      :github => "MyString",
      :job => "MyString",
      :student1 => "MyString",
      :student2 => "MyString",
      :attended_as_student => false,
      :coached_april_13 => "MyString",
      :coached_march_14 => "MyString",
      :coached_april_15 => "MyString",
      :coached_august_15 => "MyString",
      :coached_march_16 => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders new coach form" do
    render

    assert_select "form[action=?][method=?]", coaches_path, "post" do

      assert_select "input#coach_first_name[name=?]", "coach[first_name]"

      assert_select "input#coach_last_name[name=?]", "coach[last_name]"

      assert_select "input#coach_email[name=?]", "coach[email]"

      assert_select "input#coach_twitter[name=?]", "coach[twitter]"

      assert_select "input#coach_github[name=?]", "coach[github]"

      assert_select "input#coach_job[name=?]", "coach[job]"

      assert_select "input#coach_student1[name=?]", "coach[student1]"

      assert_select "input#coach_student2[name=?]", "coach[student2]"

      assert_select "input#coach_attended_as_student[name=?]", "coach[attended_as_student]"

      assert_select "input#coach_coached_april_13[name=?]", "coach[coached_april_13]"

      assert_select "input#coach_coached_march_14[name=?]", "coach[coached_march_14]"

      assert_select "input#coach_coached_april_15[name=?]", "coach[coached_april_15]"

      assert_select "input#coach_coached_august_15[name=?]", "coach[coached_august_15]"

      assert_select "input#coach_coached_march_16[name=?]", "coach[coached_march_16]"

      assert_select "textarea#coach_notes[name=?]", "coach[notes]"
    end
  end
end
