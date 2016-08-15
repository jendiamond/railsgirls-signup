require 'rails_helper'

describe "user", type: :request do

  let!(:user) { FactoryGirl.build(:user) }
    let(:params) {{ user: { email: user.email} }}

  it "should create a user" do
    post '/users', params
    expect(response.code).to eq("302")
    expect(response).to redirect_to(user_path/1)
    user_email = params[:user][:email]
    expect(User.where(email: user_email).first.email).to eq(user_email)
  end
end