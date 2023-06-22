class AddChanelIdToDiscussions < ActiveRecord::Migration[7.0]
  def change
    add_column :discussions, :chanel_id, :integer
  end
end
