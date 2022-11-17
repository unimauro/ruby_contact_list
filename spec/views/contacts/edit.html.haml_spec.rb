require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      name: "MyString",
      telephone: 1,
      address: "MyString",
      credit_card_number: 1,
      email: "MyString",
      import_status: nil,
      user: nil,
      credit_card_network: nil
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input[name=?]", "contact[name]"

      assert_select "input[name=?]", "contact[telephone]"

      assert_select "input[name=?]", "contact[address]"

      assert_select "input[name=?]", "contact[credit_card_number]"

      assert_select "input[name=?]", "contact[email]"

      assert_select "input[name=?]", "contact[import_status_id]"

      assert_select "input[name=?]", "contact[user_id]"

      assert_select "input[name=?]", "contact[credit_card_network_id]"
    end
  end
end
