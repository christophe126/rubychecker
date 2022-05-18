class CreateVersions < ActiveRecord::Migration[6.1]
  def change
    create_table :versions do |t|
      t.string :num_version
      t.date :date_version

      t.timestamps
    end
  end
end
