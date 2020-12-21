class Post < ApplicationRecord
	#	belongs_to :user
		validates :name, :presence => true
		validates :title, :presence => true,
											:length => { :minimum => 5 }

		has_many :comments, :dependent => :destroy
		has_many :likes, dependent: :destroy
		mount_uploader :image, ImageUploader

end
