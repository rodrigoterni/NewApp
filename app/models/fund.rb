class Fund < ActiveRecord::Base
   
  attr_accessible :name, :category, :minapp, :trackrecord

  serialize :trackrecord, Hash

  validates :name, :presence => true
  validates :minapp, :presence => true
  validates :category, :presence => true

end
