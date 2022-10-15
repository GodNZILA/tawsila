class ConducteursController < ApplicationController

  def new
    @conducteur = Conducteur.new
  end

  def create
  @conducteur = Conducteur.new(conducteur_params)
  @conducteur.users_id = current_user.id
  @conducteur.save!
  redirect_to offres_path

  def edit
  end
  
end
end
