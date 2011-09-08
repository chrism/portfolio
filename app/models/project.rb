class Project < ActiveRecord::Base
  validates :title,  :presence => true
  validates :description, :presence => true
    
  has_many :projectimages
  has_and_belongs_to_many :categories
end
