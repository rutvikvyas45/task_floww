# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  task_id    :integer
#
# Indexes
#
#  index_comments_on_author_id  (author_id)
#  index_comments_on_task_id    (task_id)
#

require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
