class CreateLols < ActiveRecord::Migration[5.1]
  def change
    create_table :lols do |t|
      t.string :medium

      t.timestamps
    end
  end
end
