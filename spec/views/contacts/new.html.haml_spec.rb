require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
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

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

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
