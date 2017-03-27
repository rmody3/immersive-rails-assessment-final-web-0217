class AppearancesController < ApplicationController
  before_action :require_login

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to @appearance.episode
    else
      flash[:notice] = "Something went wrong please try again"
      redirect_to new_appearance_path
    end
  end


  def edit
    @appearance = Appearance.find(params[:id])
  end

  def update
    @appearance = Appearance.find(params[:id])
    if @appearance.update(appearance_params)
      redirect_to @appearance.episode
    else
      flash[:notice] = "Something went wrong when editing, please try again "
      redirect_to edit_appearance_path(@appearance.id)
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating, :user_id)
  end



end
