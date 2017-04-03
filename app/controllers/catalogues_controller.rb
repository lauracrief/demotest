require 'test_helper'
class CataloguesController < ApplicationController

  before_action :set_catalogue, only: [:show]

  def index
    @catalogues = policy_scope(catalogue)
  end


  def show

  end

  def edit

  end

  def update

    # lorsque l'on arrive à cette méthode, vérifier si l'authorize fonctionne bien si l'user = admin
    if @catalogue.save
      redirect_to catalogue_path(@catalogue)
    else
      render :edit
    end
  end

  private

  def set_catalogue
    @catalogue = Catalogue.find(params[:id])
    authorize(@catalogue)
  end

  def catalogue_params
    params.require(:catalogue).permit(:nom, :code, :nombre_de_produit)
  end
end

end

end
