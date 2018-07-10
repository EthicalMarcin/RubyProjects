class RemoveCommentatorFromComment < ActiveRecord::Migration[5.2]
  def change
  	remove_column :comments, :commentator, :string
  end
end
