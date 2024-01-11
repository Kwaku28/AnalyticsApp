class UsersController < ApplicationController
  def splash
    return unless user_signed_in?

    redirect_to searches_path
  end
end
