class AddSlugToChanels < ActiveRecord::Migration[7.0]
  def change
    add_column :chanels, :slug, :string
  end
end
