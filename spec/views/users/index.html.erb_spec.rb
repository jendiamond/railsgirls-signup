require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
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
      ),
      User.create!(
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
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter Handle".to_s, :count => 2
    assert_select "tr>td", :text => "Github User Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Operating System".to_s, :count => 2
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
    assert_select "tr>td", :text => "Coach".to_s, :count => 2
    assert_select "tr>td", :text => "Pair".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
