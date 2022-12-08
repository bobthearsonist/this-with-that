require 'rails_helper'

Rspec.rakedescribe MaterialsRelationship, type: :model do
  context 'when inserting' do
    it 'fails if already exists' do
      Materials.create(name: 'Bleach')
      Materials.create(name: 'Windex')

      MaterialsRelationship.create(material_source_id: Materials.where(name: 'Windex').ids.first,
                                   material_dest_id: Materials.where(name: 'Bleach').ids.first)

      expect do
        MaterialsRelationship.create(material_source_id: Materials.where(name: 'Windex').ids.first,
                                     material_dest_id: Materials.where(name: 'Bleach').ids.first)
      end
        .to raise_error(ActiveRecord::RecordNotUnique)
    end
  end
end
