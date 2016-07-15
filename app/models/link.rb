class Link < ActiveRecord::Base

  acts_as_votable

  validates_presence_of :title
  validates_presence_of :url

end
