require 'rails_helper'

RSpec.describe "routine_exercises/new", type: :view do
  before(:each) do
    assign(:routine_exercise, RoutineExercise.new(
      sets: 1,
      repetitions: 1,
      weight: 1.5,
      routine: nil,
      exercise: nil
    ))
  end

  it "renders new routine_exercise form" do
    render

    assert_select "form[action=?][method=?]", routine_exercises_path, "post" do

      assert_select "input[name=?]", "routine_exercise[sets]"

      assert_select "input[name=?]", "routine_exercise[repetitions]"

      assert_select "input[name=?]", "routine_exercise[weight]"

      assert_select "input[name=?]", "routine_exercise[routine_id]"

      assert_select "input[name=?]", "routine_exercise[exercise_id]"
    end
  end
end
