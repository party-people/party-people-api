class Article < ActiveRecord::Base
  include ArticleStatus
  
  has_many :items, dependent: :destroy
  belongs_to :category
  belongs_to :user

  scope :newest, -> { order(updated_at: :desc) }
end
