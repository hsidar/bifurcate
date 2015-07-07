class AddTagsToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :tag, :string
  end
end
