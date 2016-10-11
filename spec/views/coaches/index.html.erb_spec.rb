require 'rails_helper'

RSpec.describe "coaches/index", type: :view do
  before(:each) do
    assign(:coaches, [
      Coach.create!(
      :first_name => "Pikku",
      :last_name => "Pie",
      :email => "pikkupie@gmail.com",
      :twitter => "https://twitter.com/pikkupie",
      :github => "https://github.com/pikkupie",
      :job => "bug killer",
      :student1 => "Hamster",
      :student2 => "Santa",
      :attended_as_student => false,
      :coach_april_13_pivotal => false,
      :coach_march_14_invpasadena => true,
      :coach_april_15_pivotal => false,
      :coach_august_15_spokeo => true,
      :coach_march_16_zest => false,
      :work_at_sponsoring_company => true,
      :notes => "Last time I coached a cockroach and a mouse. 
                 Before I ate them they finished their apps."
      ),
      Coach.create!(
        :first_name => "Gareth",
        :last_name => "Rothchild",
        :email => "friendly@gmail.com",
        :twitter => "https://twitter.com/friendly",
        :github => "https://github.com/friendly",
        :job => "play boy",
        :student1 => "Marnie",
        :student2 => "Snowball",
        :attended_as_student => true,
        :coach_april_13_pivotal => true,
        :coach_march_14_invpasadena => false,
        :coach_april_15_pivotal => true,
        :coach_august_15_spokeo => false,
        :coach_march_16_zest => true,
        :work_at_sponsoring_company => false,
        :notes => "Last session the food was not to my standards."
      )
    ])
  end

  it "renders a list of coaches" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Github".to_s, :count => 2
    assert_select "tr>td", :text => "Job".to_s, :count => 2
    assert_select "tr>td", :text => "Student1".to_s, :count => 2
    assert_select "tr>td", :text => "Student2".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Coached April 13".to_s, :count => 2
    assert_select "tr>td", :text => "Coached March 14".to_s, :count => 2
    assert_select "tr>td", :text => "Coached April 15".to_s, :count => 2
    assert_select "tr>td", :text => "Coached August 15".to_s, :count => 2
    assert_select "tr>td", :text => "Coached March 16".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
