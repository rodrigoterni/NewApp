class Fund < ActiveRecord::Base
   
  attr_accessible :name, :category, :min_application

  validates :name, :presence => true
  validates :min_application, :presence => true
  validates :category, :presence => true
end
