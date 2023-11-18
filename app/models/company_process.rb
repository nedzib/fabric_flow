# == Schema Information
#
# Table name: company_processes
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :bigint           not null
#
# Indexes
#
#  index_company_processes_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#
class CompanyProcess < ApplicationRecord
  belongs_to :company
  has_many :process_steps
  has_many :items, class_name: 'Item', foreign_key: 'process_id'
end
