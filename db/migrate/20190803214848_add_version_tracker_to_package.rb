class AddVersionTrackerToPackage < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :version_tracker, :string
  end
end
