require 'rails_helper'

RSpec.describe "equipment/index", type: :view do
  before(:each) do
    assign(:equipment, [
      Equipment.create!(
        name: "Name",
        name_es: "Name Es"
      ),
      Equipment.create!(
        name: "Name",
        name_es: "Name Es"
      )
    ])
  end

  it "renders a list of equipment" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name Es".to_s), count: 2
  end
end
