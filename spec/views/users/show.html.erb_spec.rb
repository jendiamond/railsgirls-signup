require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => "Phone",
      :zip_code => "Zip Code",
      :twitter_handle => "Twitter Handle",
      :github_user_name => "Github User Name",
      :over_21 => false,
      :age => 2,
      :operating_system => "Operating System",
      :rating => "Rating",
      :coach => "Coach",
      :pair => "Pair",
      :accepted => false,
      :attended => false,
      :phase_five_coach => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Zip Code/)
    expect(rendered).to match(/Twitter Handle/)
    expect(rendered).to match(/Github User Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Operating System/)
    expect(rendered).to match(/Rating/)
    expect(rendered).to match(/Coach/)
    expect(rendered).to match(/Pair/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
