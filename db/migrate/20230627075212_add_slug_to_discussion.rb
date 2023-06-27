class AddSlugToDiscussion < ActiveRecord::Migration[7.0]
  def change
    add_column :discussions, :slug, :string
  end
end
