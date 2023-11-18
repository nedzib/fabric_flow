# == Schema Information
#
# Table name: takes
#
#  id          :bigint           not null, primary key
#  size        :float
#  weight      :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  material_id :bigint           not null
#
# Indexes
#
#  index_takes_on_material_id  (material_id)
#
# Foreign Keys
#
#  fk_rails_...  (material_id => materials.id)
#
class Take < ApplicationRecord
  belongs_to :material
end
