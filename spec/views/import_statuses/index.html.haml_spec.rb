require 'rails_helper'

RSpec.describe "import_statuses/index", type: :view do
  before(:each) do
    assign(:import_statuses, [
      ImportStatus.create!(
        name: false
      ),
      ImportStatus.create!(
        name: false
      )
    ])
  end

  it "renders a list of import_statuses" do
    render
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
