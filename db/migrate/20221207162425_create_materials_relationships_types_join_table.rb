class CreateMaterialsRelationshipsTypesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :materials_relationships, :materials_relationships_types do |t|
    end
  end
end
