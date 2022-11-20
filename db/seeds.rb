require "open-uri"
p "clear seeds"

Booking.destroy_all
Offre.destroy_all
Voiture.destroy_all
Conducteur.destroy_all
Passager.destroy_all
Review.destroy_all
User.destroy_all

p "creation conducteurs"
user1 = User.create!(email: "amine@lewagon.com", password: "123456", first_name: "Amine", last_name: "LAMNAOUAR", telephone: "0612345678", address: "1 rue de la paix, 75000 Paris", cin: "E23432")
conducteur1 = Conducteur.create!(user: user1, numero_permis: "R234432")
Passager.create!(user: user1)

user2 = User.create!(email: "god@lewagon.com", password: "123456", first_name: "God", last_name: "NZILA", telephone: "0615345678", address: "1 rue de la paix, 75000 Paris", cin: "E23432")
conducteur2 = Conducteur.create!(user: user2 , numero_permis: "R234432")
Passager.create!(user: user2 )

user3 = User.create!(email: "morad@lewagon.com", password: "123456", first_name: "Morad", last_name: "MIMOU", telephone: "0612345678", address: "1 rue de la paix, 75000 Paris", cin: "E23432")
conducteur3 = Conducteur.create!(user: user3 , numero_permis: "R234432")
Passager.create!(user: user3 )

p "creation passagers"

user4 = User.create!(email: "hamza@lewagon.com", password: "123456", first_name: "Hamza", last_name: "KHOYA", telephone: "0612345678", address: "1 rue de la paix, 75000 Paris", cin: "E23435")
conducteur4 = Conducteur.create!(user: user4 , numero_permis: "R234432")
passager1 = Passager.create!(user: user4)

user5 = User.create!(email: "omar@lewagon.com", password: "123456", first_name: "OMAR", last_name: "God", telephone: "0612345678", address: "1 rue de la paix, 75000 Paris", cin: "E23435")
conducteur5 = Conducteur.create!(user: user5 , numero_permis: "R234432")
passager2 = Passager.create!(user: user5)

user6 = User.create!(email: "nzila@lewagon.com", password: "123456", first_name: "Nzila", last_name: "God", telephone: "0612345678", address: "1 rue de la paix, 75000 Paris", cin: "E23435")
conducteur6 = Conducteur.create!(user: user6, numero_permis: "R234432")
passager3 = Passager.create!(user: user6)

p "creation voitures"
file = URI.open("https://images.unsplash.com/photo-1607398985479-6b785a067f57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
voiture1 = Voiture.new(model: "Clio", marque: "Renault", immatriculation: "AA-123-AA", conducteur: conducteur1)
voiture1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
voiture1.save

# voiture2 = Voiture.create!(model: "Sandero", marque: "Dacia", immatriculation: "AA-323-BA", conducteur: conducteur4)
file = URI.open("https://www.automobile-magazine.fr/asset/cms/840x394/176416/config/125159/am-dacia-sandero-stepway-1.jpg?webp=1")
voiture2 = Voiture.new(model: "Sandero", marque: "Dacia", immatriculation: "GH-103-JA", conducteur: conducteur2)
voiture2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
voiture2.save

# voiture3 = Voiture.create!(model: "Golf", marque: "vw", immatriculation: "BD-163-AA", conducteur: conducteur2)
file = URI.open("https://images.unsplash.com/photo-1572811298797-9eecadf6cb24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
voiture3 = Voiture.new(model: "Golf", marque: "VW", immatriculation: "PK-183-KA", conducteur: conducteur3)
voiture3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
voiture3.save

# voiture4 = Voiture.create!(model: "Range Rover Sport", marque: "Land Rover", immatriculation: "QA-143-AA", conducteur: conducteur3)
file = URI.open("https://images.unsplash.com/photo-1604054094723-3a949e4a8993?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80")
voiture4 = Voiture.new(model: "Range Rover Sport", marque: "Land Rover", immatriculation: "CA-824-TA", conducteur: conducteur2)
voiture4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
voiture4.save
# voiture5 = Voiture.create!(model: "Range Rover Sport", marque: "Land Rover", immatriculation: "QA-143-AA", conducteur: conducteur5)
file = URI.open("https://images.unsplash.com/photo-1563720223185-11003d516935?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
voiture5 = Voiture.new(model: "Range Rover Sport", marque: "Land Rover", immatriculation: "TA-885-AA", conducteur: conducteur1)
voiture5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
voiture5.save
# voiture6 = Voiture.create!(model: "Range Rover Sport", marque: "Land Rover", immatriculation: "QA-143-AA", conducteur: conducteur6)
file = URI.open("https://images.unsplash.com/photo-1506015391300-4802dc74de2e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=959&q=80")
voiture6 = Voiture.new(model: "Wrangler", marque: "Jeep", immatriculation: "TA-886-AA", conducteur: conducteur3)
voiture6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
voiture6.save

p "creation des offres"
offre1 = Offre.create!(description_trajet: "Maarif To Oulfa", depart: "Maarif", arrivee: "Oulfa", heure_depart: "15/11/2022 15:30", prix: "20",  voiture: voiture1)

offre2 = Offre.create!(description_trajet: "Ain_seeba to Medina", depart: "AIn Seeba", arrivee: "Medina", heure_depart: "15/11/2022 20:10", prix: "30", voiture: voiture2)

offre3 = Offre.create!(description_trajet: "Derb Sultan To Ain diab", depart: "Derb Sultan", arrivee: "Ain Diab", heure_depart: "16/11/2022 10:30", prix: "40", voiture: voiture4)

offre4 = Offre.create!(description_trajet: "Anfa vers Sidi Maarouf", depart: "Anfa", arrivee: "Sidi Maarouf", heure_depart: "15/11/2022 09:00",prix: "50", voiture: voiture3)

offre5 = Offre.create!(description_trajet: "Hay Mohammedi vers Sbata", depart: "Hay Mohammedi", arrivee: "Sbata", heure_depart: "15/11/2022 09:00",prix: "30", voiture: voiture5)

offre6 = Offre.create!(description_trajet: "Vers Ouled Ziane", depart: "Bourgogne", arrivee: "Gare routière Ouled Ziane", heure_depart: "15/11/2022 09:00",prix: "25", voiture: voiture6)

p "creation des bookings"

booking1 = Booking.create!(offre: offre1, date_reservation: "15/10/2022 15:30", depart: "Medina", arrivee: "Oulfa", prix: 20, statut: "En attente", passager: passager1)

booking2 = Booking.create!(offre: offre2, date_reservation: "16/10/2022 08:30", depart: "Sbata", arrivee: "Morocco Mall", prix: 10, statut: "En attente", passager: passager2)

booking3 = Booking.create!(offre: offre3, date_reservation: "20/10/2022 17:30", depart: "Ain Seeba", arrivee: "Sidi Maarouf", prix: 50, statut: "En attente", passager: passager3)

p "creation des reviews"
review1 = Review.create!(user: user1, content: "Bon chauffeur", rating: 5)
review2 = Review.create!(user: user2, content: "respect de l'heure", rating: 5)
review3 = Review.create!(user: user3, content: "Pas sympa", rating: 1)
review4 = Review.create!(user: user4, content: "Très bonne personne", rating: 5)
review5 = Review.create!(user: user2, content: "Personne joviale", rating: 4)
review6 = Review.create!(user: user3, content: "Respectueux et sympa", rating: 5)
review7 = Review.create!(user: user5, content: "Vivement recommandé", rating: 4)
review8 = Review.create!(user: user6, content: "RAS", rating: 3)
review9 = Review.create!(user: user5, content: "Sans commentaire", rating: 2)
review10 = Review.create!(user: user1, content: "Super voyage", rating: 5)

p "all is ok"
