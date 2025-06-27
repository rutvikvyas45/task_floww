# == Schema Information
#
# Table name: project_memberships
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  project_id :integer          not null
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_project_memberships_on_project_id  (project_id)
#  index_project_memberships_on_user_id     (user_id)
#

require "test_helper"

class ProjectMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
