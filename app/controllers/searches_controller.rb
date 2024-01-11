class SearchesController < ApplicationController
  before_action :debounce_action, only: [:create]

  def index
    @searches = current_user.searches.order(created_at: :desc).limit(10)
    @search_analytics = analyze_searches(Search.all)
  end

  def create
    search_query = params[:search_query]

    if search_query.present?
      current_user.searches.create(search_query: search_query)
    end

    redirect_to searches_path
  end

  private

  def analyze_searches(search_logs)
    popular_searches = generate_popular_searches(search_logs).select { |search_query, count| count >= 2 }

    {
      popular_searches: popular_searches
    }
  end

  def generate_popular_searches(search_logs)
    search_logs.group(:search_query).count.sort_by { |_, count| -count }.to_h
  end

  def debounce_action
    key = "debounce:#{current_user.id}"
    if Rails.cache.exist?(key)
      render json: { message: "Action skipped due to debounce" }, status: :ok
      return false
    else
      Rails.cache.write(key, true, expires_in: 5.seconds)
      return true
    end
  end
end
