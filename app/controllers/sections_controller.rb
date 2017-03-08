class SectionsController < ApplicationController
  # before_action :set_section_params, only: [:index, :create, :new, :show, :update, :edit]
  def index
    @sections = Section.all
  end

  def new
    @section = Section.new()
  end

  def show
  end

  def create
    @section = Section.new(section_params)
    @section.save
    redirect_to @section
  end

  def edit
    @section = Section.find(params[:id])
    @section.save
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to sections_path
  end

  def update
  end

  private
    # def set_section_params
    #   @section = Section.find(params[:id])
    # end

    def section_params
      params.require(:section).permit(:name)
    end
end
