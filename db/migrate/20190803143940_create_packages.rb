class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :version
      t.string :date_of_publication
      t.string :title
      t.text :description
      t.string :author
      t.string :maintainer

      t.timestamps
    end
  end
end
