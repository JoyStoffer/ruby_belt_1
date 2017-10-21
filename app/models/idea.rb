class Idea < ActiveRecord::Base
  belongs_to :user, required: true

  has_many :likes, dependent: :destroy
  has_many :liked_by, through: :likes, source: :user

  validates :content, presence: true, length: {minimum: 2}
end
