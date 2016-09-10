class CreateUserComments < ActiveRecord::Migration
  def change
    create_table :user_comments do |t|
      t.float :score
      t.text :text

      t.timestamps null: false
    end
  end
end
