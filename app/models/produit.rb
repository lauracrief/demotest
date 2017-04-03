class Produit < ApplicationRecord
  belongs_to :catalogue
  has_one :catalogue

  # Validations
  validates :name, presence: true
  validates :code, presence: true
  validates :description, presence: true
  validates :tarif, presence: true
  validates :poids, presence: true


  def previous
    previous_produit = self.class.where("id < ?", id).last
    if previous_produit.nil?
      previous_produit = self.class.where("id > ?", id).last
    else
      previous_produit
    end
  end

  def next
    next_produit = self.class.where("id > ?", id).first
    if next_produit.nil?
      next_produit = self.class.where("id < ?", id).first
    else
      next_produit
    end
  end
end


