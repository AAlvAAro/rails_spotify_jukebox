require 'rails_helper'

RSpec.describe "routine_executions/index", type: :view do
  before(:each) do
    assign(:routine_executions, [
      RoutineExecution.create!(
        routine: nil
      ),
      RoutineExecution.create!(
        routine: nil
      )
    ])
  end

  it "renders a list of routine_executions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
