require 'rails_helper'

RSpec.describe "tutorials/index", type: :view do
  before(:each) do
    assign(:tutorials, [
      Tutorial.create!(
        :try_ruby => false,
        :terminal => false,
        :try_git => false,
        :html_css => false,
        :user => nil
      ),
      Tutorial.create!(
        :try_ruby => false,
        :terminal => false,
        :try_git => false,
        :html_css => false,
        :user => nil
      )
    ])
  end

  it "renders a list of tutorials" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
