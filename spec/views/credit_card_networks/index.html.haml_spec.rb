require 'rails_helper'

RSpec.describe "credit_card_networks/index", type: :view do
  before(:each) do
    assign(:credit_card_networks, [
      CreditCardNetwork.create!(
        name: "Name"
      ),
      CreditCardNetwork.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of credit_card_networks" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
