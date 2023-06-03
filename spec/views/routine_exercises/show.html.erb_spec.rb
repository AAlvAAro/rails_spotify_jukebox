require 'rails_helper'

RSpec.describe "routine_exercises/show", type: :view do
  before(:each) do
    assign(:routine_exercise, RoutineExercise.create!(
      sets: 2,
      repetitions: 3,
      weight: 4.5,
      routine: nil,
      exercise: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
