class CreateCommentator < ActiveRecord::Migration[5.2]
  def change
    create_table :commentators do |t|
      t.string :nickname
    end
  end
end
