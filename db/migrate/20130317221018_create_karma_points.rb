class CreateKarmaPoints < ActiveRecord::Migration
  def change
    create_table :karma_points do |t|
      t.integer :user_id, :null => false
      t.integer :value,   :null => false
      t.string  :label,   :null => false

      t.timestamps
    end
    add_index(:karma_points, :user_id)
  end
end
