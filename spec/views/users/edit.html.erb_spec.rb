require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :zip_code => "MyString",
      :twitter_handle => "MyString",
      :github_user_name => "MyString",
      :over_21 => false,
      :age => 1,
      :operating_system => "MyString",
      :rating => "MyString",
      :coach => "MyString",
      :pair => "MyString",
      :accepted => false,
      :attended => false,
      :phase_five_coach => false
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_phone[name=?]", "user[phone]"

      assert_select "input#user_zip_code[name=?]", "user[zip_code]"

      assert_select "input#user_twitter_handle[name=?]", "user[twitter_handle]"

      assert_select "input#user_github_user_name[name=?]", "user[github_user_name]"

      assert_select "input#user_over_21[name=?]", "user[over_21]"

      assert_select "input#user_age[name=?]", "user[age]"

      assert_select "input#user_operating_system[name=?]", "user[operating_system]"

      assert_select "input#user_rating[name=?]", "user[rating]"

      assert_select "input#user_coach[name=?]", "user[coach]"

      assert_select "input#user_pair[name=?]", "user[pair]"

      assert_select "input#user_accepted[name=?]", "user[accepted]"

      assert_select "input#user_attended[name=?]", "user[attended]"

      assert_select "input#user_phase_five_coach[name=?]", "user[phase_five_coach]"
    end
  end
end
