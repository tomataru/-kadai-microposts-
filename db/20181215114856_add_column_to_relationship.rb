class AddColumnToRelationship < ActiveRecord::Migration[5.0]
  def change
    add_reference :relationships, :like, foreign_key: { to_table: :users }
    t.index [:user_id, :like_id], unique: true
  end
  
  
end
