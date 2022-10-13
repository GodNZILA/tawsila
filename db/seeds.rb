Offre.destroy_all
Voiture.destroy_all
Conducteur.destroy_all
Passager.destroy_all
User.destroy_all

# creation d'un user en tant que conducteur
User.create!(email: "amine@lewagon.com", password: "123456", first_name: "Amine", last_name: "Bouzid", telephone: "0612345678", address: "1 rue de la paix, 75000 Paris", cin: "E23432")
Conducteur.create!(user: User.first, numero_permis: "R234432")
Passager.create!(user: User.first)

# creation d'un user en tant que conducteur
User.create!(email: "nzila@lewagon.com", password: "123456", first_name: "Nzila", last_name: "God", telephone: "0612345678", address: "1 rue de la paix, 75000 Paris", cin: "E23435")
Passager.create!(user: User.second)

# creation d'une voiture
Voiture.create!(model: "Clio", marque: "Renault", immatriculation: "AA-123-AA", conducteur: Conducteur.first)
# creation d'une offre
10.times do
  Offre.create!(description_trajet: "maarif-oulfa", voiture: Voiture.first)
end


#current_user.passager.nil?
