# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create the material relationship types
MaterialsRelationshipsType.create(name: 'Do Not Mix With')
MaterialsRelationshipsType.create(name: 'Do Not Use On')

# Test Data
Material.create(name: 'Simple Green')
Material.create(name: 'Windex')
Material.create(name: 'Bleach')

MaterialsRelationship.create(material_source_id: Material.where(name: 'Windex').ids.first,
                             material_dest_id: Material.where(name: 'Bleach').ids.first)
