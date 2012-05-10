class Fund < ActiveRecord::Base

  serialize :trackrecord, Hash

  validates :name, :presence => true
  validates :minapp, :presence => true
  validates :category, :presence => true

end
