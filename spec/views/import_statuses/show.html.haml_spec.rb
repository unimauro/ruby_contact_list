require 'rails_helper'

RSpec.describe "import_statuses/show", type: :view do
  before(:each) do
    @import_status = assign(:import_status, ImportStatus.create!(
      name: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end
