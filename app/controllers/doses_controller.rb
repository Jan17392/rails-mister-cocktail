class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.build(dose_params)
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

