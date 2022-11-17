require "rails_helper"

RSpec.describe CreditCardNetworksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/credit_card_networks").to route_to("credit_card_networks#index")
    end

    it "routes to #new" do
      expect(get: "/credit_card_networks/new").to route_to("credit_card_networks#new")
    end

    it "routes to #show" do
      expect(get: "/credit_card_networks/1").to route_to("credit_card_networks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/credit_card_networks/1/edit").to route_to("credit_card_networks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/credit_card_networks").to route_to("credit_card_networks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/credit_card_networks/1").to route_to("credit_card_networks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/credit_card_networks/1").to route_to("credit_card_networks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/credit_card_networks/1").to route_to("credit_card_networks#destroy", id: "1")
    end
  end
end
