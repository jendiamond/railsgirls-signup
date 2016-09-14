require 'rails_helper'

RSpec.describe "Coaches", type: :request do
  describe "GET /coaches" do
    it "works! (now write some real specs)" do
      get coaches_path
      expect(response).to have_http_status(200)
    end
  end
end
