class AddUniqueConstraintToMaterialsRelationships < ActiveRecord::Migration[7.0]
  def change
    add_index :materials_relationships, %i[material_source_id material_dest_id], unique: true, name: 'unique_materials_relationships_on_material_id_and_material_id'
  end
end
