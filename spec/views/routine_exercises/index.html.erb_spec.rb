require 'rails_helper'

RSpec.describe "routine_exercises/index", type: :view do
  before(:each) do
    assign(:routine_exercises, [
      RoutineExercise.create!(
        sets: 2,
        repetitions: 3,
        weight: 4.5,
        routine: nil,
        exercise: nil
      ),
      RoutineExercise.create!(
        sets: 2,
        repetitions: 3,
        weight: 4.5,
        routine: nil,
        exercise: nil
      )
    ])
  end

  it "renders a list of routine_exercises" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
