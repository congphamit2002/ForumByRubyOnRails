class AddSlugToReplies < ActiveRecord::Migration[7.0]
  def change
    add_column :replies, :slug, :string
  end
end
