class AddTagsToEvents < ActiveRecord::Migration[5.2]
  def change
    change_table :events do |t|
      t.json :tags, null: false
    end
  end
end
