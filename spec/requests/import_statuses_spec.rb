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

RSpec.describe "/import_statuses", type: :request do
  
  # ImportStatus. As you add validations to ImportStatus, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ImportStatus.create! valid_attributes
      get import_statuses_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      import_status = ImportStatus.create! valid_attributes
      get import_status_url(import_status)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_import_status_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      import_status = ImportStatus.create! valid_attributes
      get edit_import_status_url(import_status)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ImportStatus" do
        expect {
          post import_statuses_url, params: { import_status: valid_attributes }
        }.to change(ImportStatus, :count).by(1)
      end

      it "redirects to the created import_status" do
        post import_statuses_url, params: { import_status: valid_attributes }
        expect(response).to redirect_to(import_status_url(ImportStatus.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ImportStatus" do
        expect {
          post import_statuses_url, params: { import_status: invalid_attributes }
        }.to change(ImportStatus, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post import_statuses_url, params: { import_status: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested import_status" do
        import_status = ImportStatus.create! valid_attributes
        patch import_status_url(import_status), params: { import_status: new_attributes }
        import_status.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the import_status" do
        import_status = ImportStatus.create! valid_attributes
        patch import_status_url(import_status), params: { import_status: new_attributes }
        import_status.reload
        expect(response).to redirect_to(import_status_url(import_status))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        import_status = ImportStatus.create! valid_attributes
        patch import_status_url(import_status), params: { import_status: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested import_status" do
      import_status = ImportStatus.create! valid_attributes
      expect {
        delete import_status_url(import_status)
      }.to change(ImportStatus, :count).by(-1)
    end

    it "redirects to the import_statuses list" do
      import_status = ImportStatus.create! valid_attributes
      delete import_status_url(import_status)
      expect(response).to redirect_to(import_statuses_url)
    end
  end
end
