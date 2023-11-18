# == Schema Information
#
# Table name: materials
#
#  id            :bigint           not null, primary key
#  material_type :integer
#  size          :float
#  weight        :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  provider_id   :bigint           not null
#  warehouse_id  :bigint           not null
#
# Indexes
#
#  index_materials_on_provider_id   (provider_id)
#  index_materials_on_warehouse_id  (warehouse_id)
#
# Foreign Keys
#
#  fk_rails_...  (provider_id => providers.id)
#  fk_rails_...  (warehouse_id => warehouses.id)
#
class Material < ApplicationRecord
  belongs_to :provider
  belongs_to :warehouse
  enum :material_type, { fabric: 1, metal: 2, plastic: 3 }
  has_many :takes
end
