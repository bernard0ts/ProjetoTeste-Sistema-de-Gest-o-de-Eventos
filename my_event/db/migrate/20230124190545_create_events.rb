class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :description
      t.string :detail
      

      t.timestamps
    end
  end
end
