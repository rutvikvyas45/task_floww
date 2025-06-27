# == Schema Information
#
# Table name: tasks
#
#  id               :integer          not null, primary key
#  title            :string
#  desription       :text
#  status           :integer
#  priority         :integer
#  type             :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  reporter_id      :integer
#  assignee_id      :integer
#  sprint_id        :integer
#  project_id       :integer
#  parent_ticket_id :integer
#
# Indexes
#
#  index_tasks_on_assignee_id       (assignee_id)
#  index_tasks_on_parent_ticket_id  (parent_ticket_id)
#  index_tasks_on_project_id        (project_id)
#  index_tasks_on_reporter_id       (reporter_id)
#  index_tasks_on_sprint_id         (sprint_id)
#

require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
