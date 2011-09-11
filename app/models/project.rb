class Project < ActiveRecord::Base
  validates :title,  :presence => true
  validates :description, :presence => true
    
  has_many :projectimages, :order => 'mainimage DESC'
  has_and_belongs_to_many :categories
end
