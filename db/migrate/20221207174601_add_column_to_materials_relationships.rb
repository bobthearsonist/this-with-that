class AddColumnToMaterialsRelationships < ActiveRecord::Migration[7.0]
  def change
    add_column :materials_relationships, :id, :primary_key
  end
end
