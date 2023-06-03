require "rails_helper"

RSpec.describe RoutineExercisesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/routine_exercises").to route_to("routine_exercises#index")
    end

    it "routes to #new" do
      expect(get: "/routine_exercises/new").to route_to("routine_exercises#new")
    end

    it "routes to #show" do
      expect(get: "/routine_exercises/1").to route_to("routine_exercises#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/routine_exercises/1/edit").to route_to("routine_exercises#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/routine_exercises").to route_to("routine_exercises#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/routine_exercises/1").to route_to("routine_exercises#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/routine_exercises/1").to route_to("routine_exercises#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/routine_exercises/1").to route_to("routine_exercises#destroy", id: "1")
    end
  end
end
