class AddForeignKeyToMaterialsRelationships < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :materials_relationships, :materials, column: :material_source_id
    add_foreign_key :materials_relationships, :materials, column: :material_dest_id
  end
end
