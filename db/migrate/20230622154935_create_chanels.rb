class CreateChanels < ActiveRecord::Migration[7.0]
  def change
    create_table :chanels do |t|
      t.string :chanel

      t.timestamps
    end
  end
end
