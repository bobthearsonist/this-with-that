# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_221_207_180_842) do
  create_table 'materials', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'materials_relationships', force: :cascade do |t|
    t.integer 'material_source_id', null: false
    t.integer 'material_dest_id', null: false
    t.index '"material_id"', name: 'index_materials_relationships_on_material_id_and_material_id'
  end

  create_table 'materials_relationships_relationships_types', id: false, force: :cascade do |t|
    t.integer 'materials_relationship_id', null: false
    t.integer 'materials_relationships_type_id', null: false
  end

  create_table 'materials_relationships_types', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'materials_relationships', 'materials', column: 'material_dest_id'
  add_foreign_key 'materials_relationships', 'materials', column: 'material_source_id'
end
