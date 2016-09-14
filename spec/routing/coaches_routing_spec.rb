require "rails_helper"

RSpec.describe CoachesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coaches").to route_to("coaches#index")
    end

    it "routes to #new" do
      expect(:get => "/coaches/new").to route_to("coaches#new")
    end

    it "routes to #show" do
      expect(:get => "/coaches/1").to route_to("coaches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coaches/1/edit").to route_to("coaches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coaches").to route_to("coaches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/coaches/1").to route_to("coaches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/coaches/1").to route_to("coaches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coaches/1").to route_to("coaches#destroy", :id => "1")
    end

  end
end
