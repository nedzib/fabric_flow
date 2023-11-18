# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint           not null
#
# Indexes
#
#  index_companies_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
class Company < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :employees, class_name: 'User', foreign_key: 'company_id'
  has_many :providers
  has_many :warehouses
  has_many :company_processes
end
