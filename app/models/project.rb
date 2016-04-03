class Project < ActiveRecord::Base
  belongs_to :user
  has_many :users
  has_many :posts
  validates_formatting_of :website, using: :url
end
