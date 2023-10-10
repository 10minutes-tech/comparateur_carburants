class CreateStations < ActiveRecord::Migration[7.1]
  def change
    create_table :stations do |t|
      t.integer :id_station
      t.float :latitude
      t.float :longitude
      t.string :cp
      t.string :pop
      t.string :adresse
      t.string :ville
      t.string :services
      t.string :prix
      t.string :horaires
      t.string :geom
      t.string :gazole_maj
      t.string :gazole_prix
      t.string :sp95_maj
      t.string :sp95_prix
      t.string :e85_maj
      t.string :e85_prix
      t.string :gplc_maj
      t.string :gplc_prix
      t.string :e10_maj
      t.string :e10_prix
      t.string :sp98_maj
      t.string :sp98_prix
      t.string :carburants_disponibles
      t.string :carburants_indisponibles
      t.string :horaires_automate_24_24
      t.string :services_service
      t.string :departement
      t.string :code_departement
      t.string :region
      t.string :code_region

      t.timestamps
    end
  end
end
