class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :content
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
