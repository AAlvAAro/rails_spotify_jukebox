require "rails_helper"

RSpec.describe RoutineExecutionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/routine_executions").to route_to("routine_executions#index")
    end

    it "routes to #new" do
      expect(get: "/routine_executions/new").to route_to("routine_executions#new")
    end

    it "routes to #show" do
      expect(get: "/routine_executions/1").to route_to("routine_executions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/routine_executions/1/edit").to route_to("routine_executions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/routine_executions").to route_to("routine_executions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/routine_executions/1").to route_to("routine_executions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/routine_executions/1").to route_to("routine_executions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/routine_executions/1").to route_to("routine_executions#destroy", id: "1")
    end
  end
end
