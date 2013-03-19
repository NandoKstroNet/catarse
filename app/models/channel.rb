class Channel < ActiveRecord::Base
  attr_accessible :description, :name, :permalink

  validates_presence_of :name, :description, :permalink
  validates_uniqueness_of :permalink

  has_and_belongs_to_many :projects

  # Links to channels should be their permalink
  def to_param; self.permalink end
end