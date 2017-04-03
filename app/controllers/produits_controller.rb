class ProduitsController < ApplicationController
  before_action :set_produit, only: [:show, :edit, :update, :destroy]

  def index
    @produits = policy_scope(produit).order(created_at: :desc)
    @catalogues = Catalogue.all

  end

  def show
  end

  def new
    @catalogue = Catalogue.new
    authorize @produit
  end

  def create

    if params[:file]
      @produit = Produits.new
    end

    def destroy

    end

end
