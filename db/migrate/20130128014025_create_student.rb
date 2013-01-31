class CreateStudent < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name
      t.string :photo_url
      t.string :section
      t.string :twitter

      t.timestamp
    end
  end

  def down
  end
end
