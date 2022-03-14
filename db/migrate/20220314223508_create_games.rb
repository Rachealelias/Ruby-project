class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :score
      t.string :total_time
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
