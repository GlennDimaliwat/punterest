class CreatePuns < ActiveRecord::Migration[5.1]
  def change
    create_table :puns do |t|
      t.references :user, foreign_key: true
      t.text :content
      t.text :context
      t.string :title
      t.string :audience

      t.timestamps
    end
  end
end
