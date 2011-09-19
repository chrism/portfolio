class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => :slugged
  
  acts_as_list
  
  default_scope :order => 'position'
  
  validates :title,  :presence => true
  validates :description, :presence => true
    
  has_many :projectimages, :order => 'position'
  has_and_belongs_to_many :categories
end
