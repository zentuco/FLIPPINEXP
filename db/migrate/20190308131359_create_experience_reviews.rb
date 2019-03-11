class CreateExperienceReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :experience_reviews do |t|
      t.integer :rating
      t.text :body
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
