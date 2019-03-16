class ExperiencesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_experience, only: [:show, :update, :edit, :destroy]


  def index
    @experiences = policy_scope(Experience)
    authorize @experiences
  end

  def show
    authorize @experience
  end

  def new
    @experience = Experience.new
    authorize @experience
  end

  def create
    @experience = Experience.new(experience_params)
    authorize @experience
    if @experience.save!
      redirect_to @experience
    else
      flash[:alert] = "Experience invalid."
      render 'new'
    end
  end

  def edit
    authorize @experience
  end

  def update
    @experience.update(experience_params)
    authorize @experience
    if @experience.save!
      redirect_to @experience
    else
      flash[:alert] = "Experience was not updated."
      render 'edit'
    end
  end

  def destroy
    authorize @experience
    @experience.destroy

    redirect_to experiences_path, notice: "The experience has been deleted!"
  end


  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:title, :general_description)
  end
end
