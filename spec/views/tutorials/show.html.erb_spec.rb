require 'rails_helper'

RSpec.describe "tutorials/show", type: :view do
  before(:each) do
    @tutorial = assign(:tutorial, Tutorial.create!(
      :try_ruby => false,
      :terminal => false,
      :try_git => false,
      :html_css => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
