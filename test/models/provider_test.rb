# == Schema Information
#
# Table name: providers
#
#  id         :bigint           not null, primary key
#  email      :string
#  info       :text
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :bigint           not null
#
# Indexes
#
#  index_providers_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#
require "test_helper"

class ProviderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
