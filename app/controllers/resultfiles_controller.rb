class ResultfilesController < ApplicationController
  def index
    @resultfiles = Resultfile.all
  end

  def new
    @resultfile = Resultfile.new
  end

  def create
    @resultfile = Resultfile.new(resultfile_params)

    if @resume.save
      redirect_to resultfiles_path, notice: "The file has been uploaded."
    else
      render "new"
    end

  end

  def destroy
    @resultfile = Resultfile.find(params[:id])
    @resume.destroy
    redirect_to resultfiles_path
  end

  private
  def resultfile_params
    params.require(:resultfile).permit( :namefile)
  end
end
