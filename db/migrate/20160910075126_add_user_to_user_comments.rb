class AddUserToUserComments < ActiveRecord::Migration
  def change
    add_reference :user_comments, :user, index: true, foreign_key: true
  end
end
