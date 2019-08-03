class Package < ApplicationRecord

  validates_presence_of :name, :version
  validates_uniqueness_of :version_tracker
end
