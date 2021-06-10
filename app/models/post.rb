require 'elasticsearch/model' 
class Post < ApplicationRecord
		scope :filter_by_user, -> (user) { where user: user }
		scope :filter_by_category, -> (category) { where category: category }
		include Elasticsearch::Model
		include Elasticsearch::Model::Callbacks
		belongs_to :user
		belongs_to :category
		validates :title, :presence => true,
											:length => { :minimum => 5 }

		has_many :comments, :dependent => :destroy
		has_many :likes, dependent: :destroy
		has_many :favorites, dependent: :destroy
		mount_uploader :image, ImageUploader

searchkick
def self.search(query, params)
  __elasticsearch__.search(
    {
      query: {
        multi_match: {
          query: query,
          fields: params[:fields]
        }
      },
      highlight: {
        pre_tags: ['<em>'],
        post_tags: ['</em>'],
        fields: {
          title: {},
          content: {}
        }
      }
    }
  )
end
end

