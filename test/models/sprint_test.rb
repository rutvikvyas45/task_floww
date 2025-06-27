# == Schema Information
#
# Table name: sprints
#
#  id         :integer          not null, primary key
#  name       :string
#  start_date :date
#  end_date   :date
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :integer
#
# Indexes
#
#  index_sprints_on_project_id  (project_id)
#

require "test_helper"

class SprintTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
