require 'rails_helper'

RSpec.describe "programs/show", type: :view do
  before(:each) do
    assign(:program, Program.create!(
      name: "Name",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
