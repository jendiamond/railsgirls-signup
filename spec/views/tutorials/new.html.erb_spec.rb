require 'rails_helper'

RSpec.describe "tutorials/new", type: :view do
  before(:each) do
    assign(:tutorial, Tutorial.new(
      :try_ruby => false,
      :terminal => false,
      :try_git => false,
      :html_css => false,
      :user => nil
    ))
  end

  it "renders new tutorial form" do
    render

    assert_select "form[action=?][method=?]", tutorials_path, "post" do

      assert_select "input#tutorial_try_ruby[name=?]", "tutorial[try_ruby]"

      assert_select "input#tutorial_terminal[name=?]", "tutorial[terminal]"

      assert_select "input#tutorial_try_git[name=?]", "tutorial[try_git]"

      assert_select "input#tutorial_html_css[name=?]", "tutorial[html_css]"

      assert_select "input#tutorial_user_id[name=?]", "tutorial[user_id]"
    end
  end
end
