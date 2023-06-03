require 'rails_helper'

RSpec.describe "routines/index", type: :view do
  before(:each) do
    assign(:routines, [
      Routine.create!(
        name: "Name",
        description: "Description",
        user: nil
      ),
      Routine.create!(
        name: "Name",
        description: "Description",
        user: nil
      )
    ])
  end

  it "renders a list of routines" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
