class ProfilesController < ApplicationController

  def show
    @favorite = AddFavorite.where(user_id: current_user.id)
    @lastfavorite = @favorite.last
  end

  def index
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def new
  end

  def update
  end
end
