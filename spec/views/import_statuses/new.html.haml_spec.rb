require 'rails_helper'

RSpec.describe "import_statuses/new", type: :view do
  before(:each) do
    assign(:import_status, ImportStatus.new(
      name: false
    ))
  end

  it "renders new import_status form" do
    render

    assert_select "form[action=?][method=?]", import_statuses_path, "post" do

      assert_select "input[name=?]", "import_status[name]"
    end
  end
end
