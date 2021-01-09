class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.text :comment
      t.integer :followed_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
