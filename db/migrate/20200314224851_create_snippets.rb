class CreateSnippets < ActiveRecord::Migration[6.0]
  def change
    create_table :snippets do |t|
      t.text :content, null: false
      t.integer :position

      t.timestamps
    end

    add_reference :snippets, :note, foreign_key: true
  end
end
