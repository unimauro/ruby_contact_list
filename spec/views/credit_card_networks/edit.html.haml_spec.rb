require 'rails_helper'

RSpec.describe "credit_card_networks/edit", type: :view do
  before(:each) do
    @credit_card_network = assign(:credit_card_network, CreditCardNetwork.create!(
      name: "MyString"
    ))
  end

  it "renders the edit credit_card_network form" do
    render

    assert_select "form[action=?][method=?]", credit_card_network_path(@credit_card_network), "post" do

      assert_select "input[name=?]", "credit_card_network[name]"
    end
  end
end
