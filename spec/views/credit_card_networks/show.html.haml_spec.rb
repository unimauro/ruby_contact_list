require 'rails_helper'

RSpec.describe "credit_card_networks/show", type: :view do
  before(:each) do
    @credit_card_network = assign(:credit_card_network, CreditCardNetwork.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
