require 'rails_helper'

RSpec.describe "coaches/edit", type: :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
      :first_name => "Pikku",
      :last_name => "Pie",
      :email => "pikkupie@gmail.com",
      :twitter => "https://twitter.com/",
      :github => "https://github.com/",
      :job => "bug killer",
      :student1 => "Hamster",
      :student2 => "Santa",
      :attended_as_student => false,
      :coach_april_13_pivotal => true,
      :coach_march_14_invpasadena => true,
      :coach_april_15_pivotal => true,
      :coach_august_15_spokeo => true,
      :coach_march_16_zest => true,
      :work_at_sponsoring_company => true,
      :notes => "Last time I coached a cockroach and a mouse. 
                 Before I ate them they finished their apps."
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
