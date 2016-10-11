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
