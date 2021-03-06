class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :articles

  mount_uploader :avatar, AvatarUploader
end
