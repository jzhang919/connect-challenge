class AddAvatarColumnsToComments < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :comments, :avatar
  end
end
