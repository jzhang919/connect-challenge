class AddCategoryToMission < ActiveRecord::Migration[5.0]
  def change
    add_reference :missions, :category, foreign_key: true
    add_reference :comments, :mission, foreign_key: true
  end
end
