class AddPictureToUserComments < ActiveRecord::Migration
  def change
    add_reference :user_comments, :picture, index: true, foreign_key: true
  end
end
