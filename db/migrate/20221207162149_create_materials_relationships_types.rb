class CreateMaterialsRelationshipsTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :materials_relationships_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
