class CreateTaggables < ActiveRecord::Migration[5.2]
  def change
    create_table :taggables do |t|
      t.belongs_to :event, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
