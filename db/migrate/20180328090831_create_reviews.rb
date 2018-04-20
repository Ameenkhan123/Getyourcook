class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :message
      t.string :email
      t.integer :user_id
      t.integer :cook_id

      t.timestamps
    end
  end
end
