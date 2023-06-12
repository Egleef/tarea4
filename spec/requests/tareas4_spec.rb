require 'rails_helper'

RSpec.describe "Tareas4s", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tareas4/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/tareas4/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/tareas4/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/tareas4/show"
      expect(response).to have_http_status(:success)
    end
  end

end
