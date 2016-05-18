class Post < ActiveRecord::Base
  belongs_to :users

  validates :title, presence: true
  validates :user_id, presence: true
  validates :purpose, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
