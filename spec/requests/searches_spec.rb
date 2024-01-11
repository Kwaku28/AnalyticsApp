require 'rails_helper'

RSpec.describe "Searches", type: :request do
  let(:user) { create(:user) }
  let(:search_query) { 'test query' }

  before do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end

  describe "GET /index" do
    it "returns http success" do
      get searches_path
      expect(response).to have_http_status(:success)
    end

    it "assigns recent searches" do
      search_log = create(:search, user: user, search_query: search_query)
      get searches_path
      expect(assigns(:searches)).to eq([search_log])
    end
  end

  describe "POST /create" do
    it "creates a new search" do
      expect {
        post "/searches", params: { search_query: search_query }
      }.to change(Search, :count).by(1)
    end

    it "redirects to the searches page" do
      post "/searches", params: { search_query: search_query }
      expect(response).to redirect_to(searches_path)
    end
  end

  context "with invalid parameters" do
    it "does not create a new search log" do
      expect {
        post "/searches", params: { search_query: nil }
      }.to_not change(Search, :count)
    end
  end
end