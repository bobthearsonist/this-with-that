class CreateMaterialJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :material_source, :material_dest, table_name: :materials_relationships do |t|
      t.index %i[material_id material_id]
    end
  end
end
