class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def new
    @section = Section.new()
  end

  def show
    @section = Section.find(params[:id])
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

  def delete
  end

  def update
  end

  private
    def section_params
      params.require(:section).permit(:name)
    end
end
