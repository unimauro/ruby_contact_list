 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/credit_card_networks", type: :request do
  
  # CreditCardNetwork. As you add validations to CreditCardNetwork, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      CreditCardNetwork.create! valid_attributes
      get credit_card_networks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      credit_card_network = CreditCardNetwork.create! valid_attributes
      get credit_card_network_url(credit_card_network)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_credit_card_network_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      credit_card_network = CreditCardNetwork.create! valid_attributes
      get edit_credit_card_network_url(credit_card_network)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new CreditCardNetwork" do
        expect {
          post credit_card_networks_url, params: { credit_card_network: valid_attributes }
        }.to change(CreditCardNetwork, :count).by(1)
      end

      it "redirects to the created credit_card_network" do
        post credit_card_networks_url, params: { credit_card_network: valid_attributes }
        expect(response).to redirect_to(credit_card_network_url(CreditCardNetwork.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new CreditCardNetwork" do
        expect {
          post credit_card_networks_url, params: { credit_card_network: invalid_attributes }
        }.to change(CreditCardNetwork, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post credit_card_networks_url, params: { credit_card_network: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested credit_card_network" do
        credit_card_network = CreditCardNetwork.create! valid_attributes
        patch credit_card_network_url(credit_card_network), params: { credit_card_network: new_attributes }
        credit_card_network.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the credit_card_network" do
        credit_card_network = CreditCardNetwork.create! valid_attributes
        patch credit_card_network_url(credit_card_network), params: { credit_card_network: new_attributes }
        credit_card_network.reload
        expect(response).to redirect_to(credit_card_network_url(credit_card_network))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        credit_card_network = CreditCardNetwork.create! valid_attributes
        patch credit_card_network_url(credit_card_network), params: { credit_card_network: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested credit_card_network" do
      credit_card_network = CreditCardNetwork.create! valid_attributes
      expect {
        delete credit_card_network_url(credit_card_network)
      }.to change(CreditCardNetwork, :count).by(-1)
    end

    it "redirects to the credit_card_networks list" do
      credit_card_network = CreditCardNetwork.create! valid_attributes
      delete credit_card_network_url(credit_card_network)
      expect(response).to redirect_to(credit_card_networks_url)
    end
  end
end
