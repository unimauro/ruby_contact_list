require "rails_helper"

RSpec.describe ImportStatusesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/import_statuses").to route_to("import_statuses#index")
    end

    it "routes to #new" do
      expect(get: "/import_statuses/new").to route_to("import_statuses#new")
    end

    it "routes to #show" do
      expect(get: "/import_statuses/1").to route_to("import_statuses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/import_statuses/1/edit").to route_to("import_statuses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/import_statuses").to route_to("import_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/import_statuses/1").to route_to("import_statuses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/import_statuses/1").to route_to("import_statuses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/import_statuses/1").to route_to("import_statuses#destroy", id: "1")
    end
  end
end
