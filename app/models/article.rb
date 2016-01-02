class Article < ActiveRecord::Base
  has_many :items, dependent: :destroy
  belongs_to :category
  belongs_to :user
end
