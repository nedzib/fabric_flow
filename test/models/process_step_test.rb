# == Schema Information
#
# Table name: process_steps
#
#  id                 :bigint           not null, primary key
#  description        :text
#  name               :string
#  step_order         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  company_process_id :bigint           not null
#
# Indexes
#
#  index_process_steps_on_company_process_id  (company_process_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_process_id => company_processes.id)
#
require "test_helper"

class ProcessStepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
