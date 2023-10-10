
require 'csv'

# Supprimer tous les enregistrements de la table Station avant d'importer
Station.destroy_all

# Chemin vers le fichier CSV (remplacez 'stations.csv' par le nom de votre fichier CSV)
csv_file = File.join(Rails.root, 'db', 'stations.csv')

# Lire le fichier CSV en spécifiant les options de délimitation et de format
CSV.foreach(csv_file, col_sep: ';', quote_char: '"', headers: true) do |row|
  # Utilisez la valeur de la colonne 'id' du CSV pour 'id_station' dans le modèle
  station_params = {
    id_station: row['id'], # Utilisez la colonne 'id' du CSV pour 'id_station'
    latitude: row['latitude'],
    longitude: row['longitude'],
    cp: row['cp'],
    pop: row['pop'],
    adresse: row['adresse'],
    ville: row['ville'],
    services: row['services'],
    prix: row['prix'],
    horaires: row['horaires'],
    geom: row['geom'],
    gazole_maj: row['gazole_maj'],
    gazole_prix: row['gazole_prix'],
    sp95_maj: row['sp95_maj'],
    sp95_prix: row['sp95_prix'],
    e85_maj: row['e85_maj'],
    e85_prix: row['e85_prix'],
    gplc_maj: row['gplc_maj'],
    gplc_prix: row['gplc_prix'],
    e10_maj: row['e10_maj'],
    e10_prix: row['e10_prix'],
    sp98_maj: row['sp98_maj'],
    sp98_prix: row['sp98_prix'],
    carburants_disponibles: row['carburants_disponibles'],
    carburants_indisponibles: row['carburants_indisponibles'],
    horaires_automate_24_24: row['horaires_automate_24_24'],
    services_service: row['services_service'],
    departement: row['departement'],
    code_departement: row['code_departement'],
    region: row['region'],
    code_region: row['code_region']
  }

  # Créer un enregistrement de modèle Station
  Station.create(station_params)
end

puts 'Importation des stations terminée.'
