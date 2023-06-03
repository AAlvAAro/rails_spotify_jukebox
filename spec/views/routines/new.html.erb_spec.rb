require 'rails_helper'

RSpec.describe "routines/new", type: :view do
  before(:each) do
    assign(:routine, Routine.new(
      name: "MyString",
      description: "MyString",
      user: nil
    ))
  end

  it "renders new routine form" do
    render

    assert_select "form[action=?][method=?]", routines_path, "post" do

      assert_select "input[name=?]", "routine[name]"

      assert_select "input[name=?]", "routine[description]"

      assert_select "input[name=?]", "routine[user_id]"
    end
  end
end
