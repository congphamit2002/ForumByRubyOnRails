class AddDiscussionIdToChanels < ActiveRecord::Migration[7.0]
  def change
    add_column :chanels, :discussion_id, :integer
  end
end
