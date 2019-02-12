class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :ratings
      t.string :comments

      t.timestamps
    end
  end
end
