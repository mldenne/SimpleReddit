class Link < ActiveRecord::Base

  has_many :votes, dependent: :destroy

  validates_presence_of :title
  validates_presence_of :url

end
