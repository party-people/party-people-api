class Item < ActiveRecord::Base
  validates :type, presence: true

  belongs_to :article
end
