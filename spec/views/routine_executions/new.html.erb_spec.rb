require 'rails_helper'

RSpec.describe "routine_executions/new", type: :view do
  before(:each) do
    assign(:routine_execution, RoutineExecution.new(
      routine: nil
    ))
  end

  it "renders new routine_execution form" do
    render

    assert_select "form[action=?][method=?]", routine_executions_path, "post" do

      assert_select "input[name=?]", "routine_execution[routine_id]"
    end
  end
end
