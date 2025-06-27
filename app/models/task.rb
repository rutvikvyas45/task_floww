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

class Task < ApplicationRecord
  belongs_to :reporter, class_name: "User"
  belongs_to :assignee, class_name: "User", optional: true
  belongs_to :sprint, optional: true
  belongs_to :project
  belongs_to :parent_ticket, class_name: "Ticket", optional: true
  has_many :sub_tickets, class_name: "Ticket", foreign_key: :parent_ticket_id
  has_many :ticket_assignees
  has_many :assignees, through: :ticket_assignees, source: :user
  has_many :comments, dependent: :destroy
  has_many :attachments, dependent: :destroy
end
