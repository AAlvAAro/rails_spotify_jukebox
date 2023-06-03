require 'rails_helper'

RSpec.describe "routine_executions/edit", type: :view do
  let(:routine_execution) {
    RoutineExecution.create!(
      routine: nil
    )
  }

  before(:each) do
    assign(:routine_execution, routine_execution)
  end

  it "renders the edit routine_execution form" do
    render

    assert_select "form[action=?][method=?]", routine_execution_path(routine_execution), "post" do

      assert_select "input[name=?]", "routine_execution[routine_id]"
    end
  end
end
