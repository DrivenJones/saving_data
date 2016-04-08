class Tweet < ActiveRecord::Base
	belongs_to :user
	validates :content, length: {maximum: 140}
	# validates :user, presence: true
    mount_uploader :avatar, AvatarUploader


	# before_create
	# after_create :send_email_to_user

	# after_create :add_to_followers_newsfeed
end
