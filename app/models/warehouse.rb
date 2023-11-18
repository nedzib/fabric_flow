# == Schema Information
#
# Table name: warehouses
#
#  id             :bigint           not null, primary key
#  address        :string
#  capacity       :float
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  company_id     :bigint           not null
#  responsible_id :bigint           not null
#
# Indexes
#
#  index_warehouses_on_company_id      (company_id)
#  index_warehouses_on_responsible_id  (responsible_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (responsible_id => users.id)
#
class Warehouse < ApplicationRecord
  belongs_to :responsible, class_name: 'User'
  belongs_to :company
  has_many :materials
end
