# == Schema Information
#
# Table name: item_flows
#
#  id         :bigint           not null, primary key
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :bigint           not null
#  step_id    :bigint           not null
#
# Indexes
#
#  index_item_flows_on_item_id  (item_id)
#  index_item_flows_on_step_id  (step_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#  fk_rails_...  (step_id => process_steps.id)
#
require "test_helper"

class ItemFlowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
