require 'rails_helper'

RSpec.describe "equipment/new", type: :view do
  before(:each) do
    assign(:equipment, Equipment.new(
      name: "MyString",
      name_es: "MyString"
    ))
  end

  it "renders new equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_index_path, "post" do

      assert_select "input[name=?]", "equipment[name]"

      assert_select "input[name=?]", "equipment[name_es]"
    end
  end
end
