# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  model      :string
#  name       :string
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  process_id :bigint           not null
#
# Indexes
#
#  index_items_on_process_id  (process_id)
#
# Foreign Keys
#
#  fk_rails_...  (process_id => company_processes.id)
#
require "test_helper"

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
