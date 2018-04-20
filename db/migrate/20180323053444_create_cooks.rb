class CreateCooks < ActiveRecord::Migration[5.1]
  def change
    create_table :cooks do |t|
      t.string :name
      t.string :contact
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :photo
      t.text :review
      t.float :latitude
      t.float :longitude
      t.references :cook_category, foreign_key: true

      t.timestamps
    end
  end
end
