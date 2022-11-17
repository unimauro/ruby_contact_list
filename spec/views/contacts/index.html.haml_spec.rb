require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        name: "Name",
        telephone: 2,
        address: "Address",
        credit_card_number: 3,
        email: "Email",
        import_status: nil,
        user: nil,
        credit_card_network: nil
      ),
      Contact.create!(
        name: "Name",
        telephone: 2,
        address: "Address",
        credit_card_number: 3,
        email: "Email",
        import_status: nil,
        user: nil,
        credit_card_network: nil
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
