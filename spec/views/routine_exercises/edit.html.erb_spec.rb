require 'rails_helper'

RSpec.describe "routine_exercises/edit", type: :view do
  let(:routine_exercise) {
    RoutineExercise.create!(
      sets: 1,
      repetitions: 1,
      weight: 1.5,
      routine: nil,
      exercise: nil
    )
  }

  before(:each) do
    assign(:routine_exercise, routine_exercise)
  end

  it "renders the edit routine_exercise form" do
    render

    assert_select "form[action=?][method=?]", routine_exercise_path(routine_exercise), "post" do

      assert_select "input[name=?]", "routine_exercise[sets]"

      assert_select "input[name=?]", "routine_exercise[repetitions]"

      assert_select "input[name=?]", "routine_exercise[weight]"

      assert_select "input[name=?]", "routine_exercise[routine_id]"

      assert_select "input[name=?]", "routine_exercise[exercise_id]"
    end
  end
end
