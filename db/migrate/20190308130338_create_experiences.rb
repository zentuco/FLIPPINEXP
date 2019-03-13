class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.integer :price
      t.float :duration
      t.integer :spots
      t.string :location
      t.string :language
      t.text :guide_description_qualifications
      t.text :general_description
      t.text :places2visit
      t.string :equipment_provided
      t.string :equipment_needed
      t.references :user, foreign_key: true
      t.references :guide, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
