class OffresController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    # if current_user.passager.nil? && current_user.conducteur.nil?
    #   redirect_to edit_user_path(current_user)
    # end
    @offres = Offre.all
  end
end
