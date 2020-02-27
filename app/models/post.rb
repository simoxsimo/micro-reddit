class Post < ApplicationRecord
  validates :title, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 400 }
  validates :content, presence: true,
                      uniqueness: { case_sensitive: false },
                      length: { maximum: 1000 }
  belongs_to :user
  has_many :comments
end
