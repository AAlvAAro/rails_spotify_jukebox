FactoryBot.define do
  factory :routine_exercise_execution do
    repetitions { 1 }
    weight { "9.99" }
    routine_execution { nil }
    routine_exercise { nil }
  end
end
