require 'rails_helper'

RSpec.describe "credit_card_networks/new", type: :view do
  before(:each) do
    assign(:credit_card_network, CreditCardNetwork.new(
      name: "MyString"
    ))
  end

  it "renders new credit_card_network form" do
    render

    assert_select "form[action=?][method=?]", credit_card_networks_path, "post" do

      assert_select "input[name=?]", "credit_card_network[name]"
    end
  end
end
