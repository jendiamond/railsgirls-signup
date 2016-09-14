require 'rails_helper'

RSpec.describe "coaches/show", type: :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Github/)
    expect(rendered).to match(/Job/)
    expect(rendered).to match(/Student1/)
    expect(rendered).to match(/Student2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Coached April 13/)
    expect(rendered).to match(/Coached March 14/)
    expect(rendered).to match(/Coached April 15/)
    expect(rendered).to match(/Coached August 15/)
    expect(rendered).to match(/Coached March 16/)
    expect(rendered).to match(/MyText/)
  end
end
