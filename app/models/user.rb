class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :validatable

  has_many :tasks
  has_many :project_memberships, dependent: :destroy
  has_many :projects, through: :project_memberships
  has_many :reported_tickets, class_name: "Task", foreign_key: "reporter_id"
  has_many :assigned_tickets, class_name: "Task", foreign_key: "assignee_id"
  has_many :comments
end
