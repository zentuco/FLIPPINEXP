class ExperiencesController < ApplicationController
  def index
    @experiences = policy_scope(Experience)
    authorize @experiences
  end

  def show

  end

  def new
    @experience = Experience.new
    authorize @experience
  end

  def create
    # @experience = Experience.new(experience_params)
    # authorize @experience
  end

  def edit

  end

  def update
    # @experience.update(experience_params)
    # authorize @experience
  end

  def destroy

  end

  private

  # def set_experience
  #   @experience = Experience.find(params[:id])
  #   authorize @experience
  # end

  def experience_params
    params.require(:experience).permit(:title)
  end
end
