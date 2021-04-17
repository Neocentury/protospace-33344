class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title
      t.string :user_id
      t.text :concept
      t.text :catch_copy
      t.timestamps
    end
  end
end
