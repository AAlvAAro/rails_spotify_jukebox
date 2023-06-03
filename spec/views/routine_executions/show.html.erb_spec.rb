require 'rails_helper'

RSpec.describe "routine_executions/show", type: :view do
  before(:each) do
    assign(:routine_execution, RoutineExecution.create!(
      routine: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
