class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.integer :points

      t.timestamps
    end
  end
end
