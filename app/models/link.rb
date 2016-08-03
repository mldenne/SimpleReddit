class Link < ActiveRecord::Base

  belongs_to :user
  has_many :votes, dependent: :destroy
  has_many :comments

  validates_presence_of :title
  validates_presence_of :url

end
