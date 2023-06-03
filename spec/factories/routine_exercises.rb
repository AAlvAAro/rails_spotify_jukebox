FactoryBot.define do
  factory :routine_exercise do
    sets { 1 }
    repetitions { 1 }
    weight { 1.5 }
    routine { nil }
    exercise { nil }
  end
end
