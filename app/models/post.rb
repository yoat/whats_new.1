class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  validates_formatting_of :image_url, using: :url
end
