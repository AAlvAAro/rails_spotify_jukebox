require 'rails_helper'

RSpec.describe "equipment/show", type: :view do
  before(:each) do
    assign(:equipment, Equipment.create!(
      name: "Name",
      name_es: "Name Es"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Name Es/)
  end
end
