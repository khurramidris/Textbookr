class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :user_id
      t.string :query_str

      t.timestamps null: false
    end
  end
end
