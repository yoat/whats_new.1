class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  validates_formatting_of :image_url, using: :url
  validates_formatting_of :music_url, using: :url
  validates_formatting_of :video_url, using: :url
end
