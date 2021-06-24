class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :description
      t.references :visitor, index: true, foreign_key: true
      t.references :park, index: true, foreign_key: true

      t.timestamps
    end
  end
end