class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy  #allow deleting associated comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end