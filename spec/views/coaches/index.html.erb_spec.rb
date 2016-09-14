require 'rails_helper'

RSpec.describe "coaches/index", type: :view do
  before(:each) do
    assign(:coaches, [
      Coach.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :twitter => "Twitter",
        :github => "Github",
        :job => "Job",
        :student1 => "Student1",
        :student2 => "Student2",
        :attended_as_student => false,
        :coached_april_13 => "Coached April 13",
        :coached_march_14 => "Coached March 14",
        :coached_april_15 => "Coached April 15",
        :coached_august_15 => "Coached August 15",
        :coached_march_16 => "Coached March 16",
        :notes => "MyText"
      ),
      Coach.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :twitter => "Twitter",
        :github => "Github",
        :job => "Job",
        :student1 => "Student1",
        :student2 => "Student2",
        :attended_as_student => false,
        :coached_april_13 => "Coached April 13",
        :coached_march_14 => "Coached March 14",
        :coached_april_15 => "Coached April 15",
        :coached_august_15 => "Coached August 15",
        :coached_march_16 => "Coached March 16",
        :notes => "MyText"
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
