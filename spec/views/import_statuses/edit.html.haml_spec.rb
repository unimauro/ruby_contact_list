require 'rails_helper'

RSpec.describe "import_statuses/edit", type: :view do
  before(:each) do
    @import_status = assign(:import_status, ImportStatus.create!(
      name: false
    ))
  end

  it "renders the edit import_status form" do
    render

    assert_select "form[action=?][method=?]", import_status_path(@import_status), "post" do

      assert_select "input[name=?]", "import_status[name]"
    end
  end
end
